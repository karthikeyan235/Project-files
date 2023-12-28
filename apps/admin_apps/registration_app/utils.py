from .models import *
from datetime import datetime
import re
import pandas as pd
from django.contrib.auth.models import User
from apps.Accounts.models import Profile
from django.contrib.auth.hashers import make_password
from django.db import connection
from apps.admin_apps.app.models import *


def create_student_attendance_table(student_id):
    try:
        table_name = f"tblattendance_{student_id}"
        query = f"CREATE TABLE {table_name} (dates DATE NOT NULL, " \
                "p1 TINYINT NULL DEFAULT NULL, " \
                "p2 TINYINT NULL DEFAULT NULL, " \
                "p3 TINYINT NULL DEFAULT NULL, " \
                "p4 TINYINT NULL DEFAULT NULL, " \
                "p5 TINYINT NULL DEFAULT NULL, " \
                "p6 TINYINT NULL DEFAULT NULL, " \
                "ip TINYINT NULL DEFAULT NULL, " \
                "op TINYINT NULL DEFAULT NULL)"

        print(query)

        with connection.cursor() as cursor:
            cursor.execute(query)
    except Exception as e:
        raise e

def create_user(student_id,email,name,mob,option):
    try:
        user = User.objects.filter(username=str(mob))
        user_type = {1: 'parent', 2: 'teacher', 3: 'others'}.get(option, '')

        if not user:
            new_user = User.objects.create(
                username   = mob,
                email      = email,
                password   = make_password(str(mob)),  # Hashed password
                first_name = name
            )
            new_user.save()
            profile = Profile.objects.create(
                user         = new_user,
                phone_number = mob,
                user_type    = user_type,
                id_number    = student_id
            )
            profile.save()
            return True
        else:
            if option == 1:
                profile = Profile.objects.get(user=user[0])
                id_no = profile.id_number
                if student_id not in id_no:
                    profile.id_number = id_no + ',' + str(student_id)
                    profile.save()
                return True
            return False

    except Exception as e:
        return False


def student_verify_row(row):
    try:
        name_pattern = r'^[a-zA-Z\s]+$'

        if not (row['Student ID'] and row['Name'] and row['Tag ID'] and row['Email'] and row['Mobile No'] and row['Parent Name 1'] and row['Parent Relation 1'] and row['Class Name'] and row['Section']):
            print('miss')
            return False
        elif not ClassSection.objects.filter(class_number=row['Class Name'], section=row['Section']).exists():         
            print('cls sec')
            return False
        elif StudentDetails.objects.filter(tag_id=row['Tag ID'],enabled=True).exists() or TeacherDetails.objects.filter(tag_id=row['Tag ID'],enabled=True).exists() or OthersDetails.objects.filter(tag_id=row['Tag ID'],enabled=True).exists():      
            print('tag')
            return False
        elif len(str(int(row['Tag ID']))) < 8 or len(str(int(row['Mobile No']))) != 10:     
            print('taglen',row['Tag ID'],row['Mobile No'])
            return False
        elif not re.match(name_pattern, row['Name']) or not re.match(name_pattern, row['Parent Name 1']):       
            print('name')
            return False
        else:
            print('else')
            if row['Route Number']:
                row['Route Number'] = str(int(row['Route Number']))
                try:
                    if not Route.objects.using('second_db').filter(route_no=row['Route Number']).exists():
                        print('route',row['Route Number'])
                        return False
                    if row['Stop Number']: 
                        row['Stop Number'] = int(row['Stop Number'])
                        if not RouteStop.objects.using('second_db').filter(route_no=row['Route Number'],stop_no=row['Stop Number']).exists():
                            print('stop')
                            return False

                except:
                    print('route exp')
                    return False

            if not row['Stop Number']:
                row['Stop Number'] = None
            if row['DOB']: 
                dob_value = row['DOB']
                if dob_value and isinstance(dob_value, str):
                    dob_datetime = datetime.strptime(dob_value, '%d-%m-%Y')
                    row['DOB'] = dob_datetime.date().strftime('%Y-%m-%d')
            if row['Date of Joining']:
                doj_datetime = datetime.strptime(row['Date of Joining'], '%Y-%m-%d')
                row['Date of Joining'] = doj_datetime.date().strftime('%Y-%m-%d')
            if row['Date of Joining'] == '':
                row['Date of Joining'] = None
            if row['DOB'] == '':
                row['DOB'] = None

            try:
                row['Student ID'] = str(int(row['Student ID']))
            except:
                pass
            row['Tag ID'] = str(int(row['Tag ID']))
            row['Mobile No'] = str(int(row['Mobile No']))
            row['Name'] = row['Name'].upper()
            row['Section'] = row['Section'].upper()
            row['Parent Name 1'] = row['Parent Name 1'].upper()
            row['Parent Name 2'] = row['Parent Name 2'].upper()
            row['Gender'] = row['Gender'].upper()
            row['Parent Relation 1'] = row['Parent Relation 1'].upper()
            row['Parent Relation 2'] = row['Parent Relation 2'].upper()  
            # print(row)
            return row
    except Exception as e:
        raise e
        return False



def teacher_verify_row(row):
    try:
        name_pattern = r'^[a-zA-Z.\s]+$'
        # print(row)
        if not (row['Teacher ID'] and row['Name'] and row['Tag ID'] and row['Email'] and row['Mobile No']):
            # print('missing')
            return False

        elif TeacherDetails.objects.filter(tag_id=row['Tag ID'],enabled=True).exists() or StudentDetails.objects.filter(tag_id=row['Tag ID'],enabled=True).exists(): 
            # print('tag exist')         
            return False
                    
        elif len(str(row['Tag ID'])) != 10 or len(str(row['Mobile No'])) != 10:  
            # print('tag len')          
            return False

        elif not re.match(name_pattern, row['Name']):      
            # print('patren')        
            return False

        else:
            # print('else')
            row['Name'] = row['Name'].upper()
            row['Gender'] = row['Gender'].upper()
            return row
            # print(row)
    except Exception as e:
        # print('exp:',e)
        return False
        