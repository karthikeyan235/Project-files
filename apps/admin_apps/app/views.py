from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.decorators import login_required
import json
import pandas as pd
from django.db import connections, IntegrityError
from apps.admin_apps.registration_app.models import StudentDetails
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse, HttpResponseBadRequest, JsonResponse
from datetime import datetime
from dateutil.parser import parse



@login_required(login_url='login')
def base(request):
    return render(request, "tracking/track.html")

@login_required(login_url='login')
def dashboard(request):
    return render(request, "tracking/dashboard.html")

# @csrf_exempt
# def collect_data(request):
#     if request.method == 'POST':
#         try:
#             data = json.loads(request.body.decode('utf-8'))
            
#             VtsId = str(data['SystemInfo']['VtsId'])
#             IMEInumber = str(data['SystemInfo']['IMEInumber'])
#             SignalStrength = int(data['SystemInfo']['SignalStrength'])
#             SWversion = float(data['SystemInfo']['SWversion'])
#             Date = str(data['SystemInfo']['Date'])
#             Time = str(data['SystemInfo']['Time'])
#             PacketType = str(data['SystemInfo']['PacketType'])

#             Latitude = float(data['Data']['Latitude'])
#             Longitude = float(data['Data']['Longitude'])
#             LatDirection = str(data['Data']['LatDirection'])
#             LongDirection = str(data['Data']['LongDirection'])
#             Speed = float(data['Data']['Speed'])
#             RFIDtagCount = int(data['Data']['RFIDtagCount'])
#             RFIDtagIDs = str(data['Data']['RFIDtagIDs'])

#             tagid = RFIDtagIDs.split(",")
            
            

#             with connections['second_db'].cursor() as cursor:
#                 cursor.callproc('28_data1_data2', [VtsId, IMEInumber, SignalStrength, SWversion, Date, Time, PacketType, Latitude, Longitude, LatDirection, LongDirection, Speed, RFIDtagCount, RFIDtagIDs])

#             current_datetime = datetime.now()
#             date_object = datetime.strptime(Time, "%m%d%y")
#             formatted_time = date_object.strftime("%H:%M:%S")
#             # date_object = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
#             year_2023 = datetime(2023, 1, 1)  # January 1st, 2023, 00:00:00
#             if not (current_datetime < year_2023):
#                 with connections['second_db'].cursor() as cursor:
#                     for i in range(RFIDtagCount): 
#                         cursor.callproc('sproc_vts_std_id', (tagid[i], formatted_time, VtsId,Latitude,Longitude))

#             current_datetime = datetime.now()
#             datetime_string = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
#             msg = "\r\n+TIMESTAMP:"+datetime_string+"\r\n"
            

#             return JsonResponse(msg ,safe=False)
#         except Exception as e:
#             msg = {'error': str(e)}
#             return JsonResponse( msg, status=400)

# This code is for the live data from the server and the json data sent from exesting school 
# @csrf_exempt
# def collect_data(request):
#     if request.method == 'POST':
#         # print('postr')
#         try:
#             data = json.loads(request.body.decode('utf-8'))
#             VtsId = str(data['VtsId'])
#             IMEInumber = data['IMEInumber']
#             SignalStrength = data['SignalStrength']
#             SWversion = data['SWVersion']
            
#             # Extract the combined datetime string
#             datetime_str = str(data['PacketTime'])

#             # Parse the datetime string into separate date and time components
#             try:
#                 datetime_obj = datetime.strptime(datetime_str, "%m/%d/%Y %I:%M:%S %p")
#                 date_str = datetime_obj.strftime("%Y-%m-%d")
#                 time_str = datetime_obj.strftime("%H:%M:%S")
#             except ValueError:
#                 # Handle the case where the datetime string is not in the expected format
#                 date_str = None
#                 time_str = None

#             PacketType = data.get('PacketType', None)
#             Latitude = float(data['Latitude'])
#             Longitude = float(data['Longitude'])
#             LatDirection = data['LatDirection']
#             LongDirection = data['LongDirection']
#             Speed = float(data['Speed'])
#             RFIDtagCount = int(data['RFIDtagCount'])
#             RFIDtagIDs = str(data['RFIDtagIDs'])
#             print(RFIDtagIDs)

#             tagid = RFIDtagIDs.split(",")

#             # Ensure you pass 14 arguments to the stored procedure
#             with connections['second_db'].cursor() as cursor:
#                 # print(VtsId, IMEInumber, 0, SWversion, date_str, time_str, PacketType, Latitude, Longitude, LatDirection, LongDirection, Speed, RFIDtagCount, RFIDtagIDs)
#                 cursor.callproc(
#                     'Track_live_data',[VtsId, "123456789012345", 0, 1.0, date_str, time_str, 'periodic', Latitude, Longitude, "N", "W", Speed, RFIDtagCount, RFIDtagIDs]
#                 )

           

#             current_datetime = datetime.now()
#             year_2023 = datetime(2023, 1, 1)  # January 1st, 2023, 00:00:00

#             if not (current_datetime < year_2023):
#                 with connections['second_db'].cursor() as cursor:
#                     for i in range(RFIDtagCount):
#                         # Format the datetime in the required format
#                         # formatted_time_str = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
#                         formatted_time_str = current_datetime.strftime("%Y-%m-%d") + ' ' + time_str
#                         print(formatted_time_str)
#                         cursor.callproc('sproc_vts-std-tag_id', (tagid[i], formatted_time_str, VtsId, Latitude, Longitude))

#             datetime_string = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
#             msg = "\r\n+TIMESTAMP:" + datetime_string + "\r\n"

#             return JsonResponse(msg, safe=False)
#         except Exception as e:
#             msg = {'error': str(e)}
#             return JsonResponse(msg, status=400)
@csrf_exempt
def collect_data(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body.decode('utf-8'))
            VtsId = str(data['VtsId'])
            IMEInumber = data['IMEInumber']
            SignalStrength = data['SignalStrength']
            SWVersion = data['SWVersion']
            
            # Extract the combined datetime string
            datetime_str = str(data['PacketTime'])

            # Parse the datetime string into separate date and time components
            try:
                datetime_obj = datetime.strptime(datetime_str, "%m/%d/%Y %I:%M:%S %p")
                date_str = datetime_obj.strftime("%Y-%m-%d")
                time_str = datetime_obj.strftime("%H:%M:%S")
            except ValueError:
                date_str = None
                time_str = None

            PacketType = data.get('PacketType', None)
            Latitude = float(data['Latitude'])
            Longitude = float(data['Longitude'])
            LatDirection = data['LatDirection']
            LongDirection = data['LongDirection']
            Speed = float(data['Speed'])
            RFIDtagCount = int(data['RFIDtagCount'])
            RFIDtagIDs = str(data['RFIDtagIDs'])
            tagid = RFIDtagIDs.split(",")

            with connections['second_db'].cursor() as cursor:
                cursor.callproc(
                    'Track_live_data',
                    [VtsId, "123456789012345", 0, 1.0, date_str, time_str, 'periodic', Latitude, Longitude, "N", "W", Speed, RFIDtagCount, RFIDtagIDs]
                )

            current_datetime = datetime.now()
            year_2023 = datetime(2023, 1, 1)

            if not (current_datetime < year_2023):
                with connections['second_db'].cursor() as cursor:
                    for i in range(RFIDtagCount):
                        formatted_time_str = time_str 
                        # print( tagid[i],formatted_time_str, VtsId, Latitude, Longitude) # Send only the time
                        cursor.callproc('sproc_vts', (tagid[i], formatted_time_str, VtsId, Latitude, Longitude))

            datetime_string = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
            msg = "\r\n+TIMESTAMP:" + datetime_string + "\r\n"

            return JsonResponse(msg, safe=False)
        except Exception as e:
            msg = {'error': str(e)}
            return JsonResponse(msg, status=400)

# python manage.py makemigrations app
# python manage.py migrate app --database=second_db




# Added this code to check the login and redirect function to only admin users and not to other users - ADDED THIS CODE ON 03-10-2023

@login_required
def create_route(request):
    if request.user.profile.user_type == 'admin':
        if request.method == 'POST':
            route_no = request.POST.get('route_no')
            route_name = request.POST.get('route_name')
            vehicle_no = request.POST.get('vehicle_no')
            vts_id = request.POST.get('vts_id')
            
            try:
                with connections['second_db'].cursor() as cursor:
                    cursor.execute(
                        "INSERT INTO route_table (route_no, route_name, vehicle_no, vts_id) "
                        "VALUES (%s, %s, %s, %s)",
                        [route_no, route_name, vehicle_no, vts_id]
                    )
                messages.success(request, 'Route created successfully')
                return redirect('Registration')  
            except IntegrityError:
                error_message = 'Duplicate entry found. Please enter unique values.'
                return render(request, 'tracking/Registration.html', {'error_message': error_message})
        
        return render(request, 'tracking/Registration.html')
    else:
        return redirect("login")

@login_required(login_url='login')
def edit_route(request, route_no):
    if request.user.profile.user_type == 'admin':
        try:
            with connections['second_db'].cursor() as cursor:
                select_query = "SELECT * FROM route_table WHERE route_no=%s"
                cursor.execute(select_query, [route_no])
                route = cursor.fetchone()

            if request.method == 'POST':
                new_route_no = request.POST['route_no']
                route_name = request.POST['route_name']
                vehicle_no = request.POST['vehicle_no']
                vts_id = request.POST['vts_id']

                with connections['second_db'].cursor() as cursor:
                    update_query = "UPDATE route_table SET route_no=%s, route_name=%s, vehicle_no=%s, vts_id=%s WHERE route_no=%s"
                    cursor.execute(update_query, [new_route_no, route_name, vehicle_no, vts_id, route_no])
                messages.success(request, "Route updated successfully")
                return redirect('assigned_routes')  # Redirect to the route listing page
            
        except IntegrityError as e:
            if 'Duplicate entry' in str(e):
                duplicate_value = str(e).split("'")[1]
                messages.error(request, f"Duplicate entry: {duplicate_value}")
            else:
                messages.error(request, f"Database Error: {e}")

        return render(request, 'tracking/edit_route.html', {'route': route})
    else:
        return redirect("login")


@login_required(login_url='login')
def delete_route(request, route_id):
    if request.user.profile.user_type == 'admin':
        with connections['second_db'].cursor() as cursor:
            delete_query = "DELETE FROM route_table WHERE route_no=%s"
            cursor.execute(delete_query, [route_id])

        return redirect('assigned_routes')  # Redirect to the route listing page
    else:
        return redirect("login")
    
@login_required(login_url='login')
def view_routes(request):
    if request.user.profile.user_type == 'admin':
        if request.method == 'POST':
            action = request.POST['action']

            if action == 'search':
                route_no = request.POST['route_no']

                with connections['second_db'].cursor() as cursor:
                    select_query = "SELECT * FROM route_table WHERE route_no=%s"
                    cursor.execute(select_query, [route_no])
                    data = cursor.fetchall()
                return render(request, 'tracking/assigned_routes.html', {'data': data})

            with connections['second_db'].cursor() as cursor:
                select_query = "SELECT * FROM route_table"
                cursor.execute(select_query)
                data = cursor.fetchall()

            return render(request, 'tracking/assigned_routes.html', {'data': data})
        else:
            with connections['second_db'].cursor() as cursor:
                select_query = "SELECT * FROM route_table"
                cursor.execute(select_query)
                data = cursor.fetchall()

            return render(request, 'tracking/assigned_routes.html', {'data': data})
    else:
        return redirect("login")


@login_required(login_url='login')
def get_trackdata_markers(request):
    if request.user.profile.user_type == 'admin':
        vts_id = request.GET.get('vts_id')
        query = "SELECT VtsId, Latitude, Longitude, Speed, RFIDtagCount FROM trackdata"
        if vts_id:
            query += f" WHERE VtsId = {vts_id}"

        with connections['second_db'].cursor() as cursor:
            cursor.execute(query)
            data = cursor.fetchall()

        markers_data = []
        for row in data:
            vts_id, latitude, longitude, speed, rfid_count = row
            markers_data.append({
                'VtsId': vts_id,
                'Latitude': latitude,
                'Longitude': longitude,
                'Speed': speed,
                'RFIDtagCount': rfid_count,
            })

        return JsonResponse(markers_data, safe=False)
    else:
        return redirect("login")


@login_required(login_url='login')
def display_map(request):
    if request.user.profile.user_type == 'admin':
        return render(request, 'tracking/route_live.html')
    else:
        return redirect("login")


@login_required(login_url='login')
def import_routes(request):
    if request.user.profile.user_type == 'admin':
        error_messages = []

        if request.method == 'POST' and request.FILES['file']:
            file = request.FILES['file']
            try:
                df = pd.read_excel(file, engine='openpyxl') if file.name.endswith('.xlsx') else pd.read_csv(file)

                columns = ['route_no', 'route_name', 'vehicle_no', 'vts_id']
                success_count = 0

                for index, row in df.iterrows():
                    try:
                        data = [row[column] for column in columns]
                        with connections['second_db'].cursor() as cursor:
                            insert_query = "INSERT INTO route_table (route_no, route_name, vehicle_no, vts_id) VALUES (%s, %s, %s, %s)"
                            cursor.execute(insert_query, data)
                        success_count += 1
                    except Exception as e:
                        error_messages.append(f"Error at row {index + 1}: {str(e)}")

                if success_count == len(df):
                    import_result = "Successfully imported all records."
                else:
                    import_result = f"Imported {success_count} records. {len(df) - success_count} records failed."
            except Exception as e:
                import_result = f"Failed to import data. Error: {str(e)}"
        else:
            import_result = None

        return render(request, 'tracking/import_routes.html', {'import_result': import_result, 'error_messages': error_messages})
    else:
        return redirect("login")



@login_required(login_url='login')
def route_viewer(request):
    if request.user.profile.user_type == 'admin':
        if request.method == 'POST':
            bus_id = request.POST.get('bus_id')
            parameter_2 = request.POST.get('parameter_2')  # New parameter

            route_data = []  # Initialize route_data outside the try block
            error_message = None  # Initialize error_message outside the try block

            try:
                with connections['second_db'].cursor() as cursor:
                    cursor.callproc('GetRouteData', [bus_id, parameter_2])  # Pass two parameters
                    results = cursor.fetchall()
                    for row in results:
                        if len(row) >= 10:
                            route_data.append({
                                'latitude': row[8],
                                'longitude': row[9]
                            })

            except Exception as e:
                error_message = "No route data found"  # Set a custom error message

            return render(request, 'tracking/route_viewer.html', {'error_message': error_message, 'route_data': route_data})
        else:
            
            return render(request, 'tracking/route_viewer.html', {'error_message': None, 'route_data': None})
    else:
        return redirect("login")

@login_required(login_url='login')
def add_route_stop(request):
    if request.user.profile.user_type == 'admin':
        message = None  # Initialize the message variable

        if request.method == 'POST':
            route_no = request.POST.get('route_no')
            stop_no = request.POST.get('stop_no')
            stop_name = request.POST.get('stop_name')
            latitude = request.POST.get('latitude')
            longitude = request.POST.get('longitude')

            with connections['second_db'].cursor() as cursor:
                # Check if the route_no exists in route_table
                cursor.execute("""
                    SELECT *
                    FROM route_table
                    WHERE route_no = %s
                """, [route_no])

                route_exists = cursor.fetchone()

                if not route_exists:
                    message = 'Entered route number does not exist'
                else:
                    # Check if the combination already exists
                    cursor.execute("""
                        SELECT *
                        FROM route_stop
                        WHERE route_no = %s AND stop_no = %s
                    """, [route_no, stop_no])

                    if cursor.fetchone():
                        message = 'Combination already exists'
                    else:
                        # Combination does not exist, insert the new stop
                        cursor.execute("""
                            INSERT INTO route_stop (route_no, stop_no, stop_name, latitude, longitude)
                            VALUES (%s, %s, %s, %s, %s)
                        """, [route_no, stop_no, stop_name, latitude, longitude])
                        message = 'Combination added successfully'

        return render(request, 'tracking/stop.html', {'message': message})
    else:
        return redirect("login")

@login_required(login_url='login')
def edit_stop(request, route_no, stop_no):
    if request.user.profile.user_type == 'admin':
        try:
            with connections['second_db'].cursor() as cursor:
                select_query = "SELECT * FROM route_stop WHERE route_no=%s AND stop_no=%s"
                cursor.execute(select_query, [route_no, stop_no])
                route_stop = cursor.fetchone()

            if request.method == 'POST':
                new_stop_name = request.POST['stop_name']
                new_latitude = request.POST['latitude']
                new_longitude = request.POST['longitude']

                with connections['second_db'].cursor() as cursor:
                    update_query = "UPDATE route_stop SET stop_name=%s, latitude=%s, longitude=%s WHERE route_no=%s AND stop_no=%s"
                    cursor.execute(update_query, [new_stop_name, new_latitude, new_longitude, route_no, stop_no])
                messages.success(request, "Route stop updated successfully")
                return redirect('route_stop_view')

        except IntegrityError as e:
            if 'Duplicate entry' in str(e):
                duplicate_value = str(e).split("'")[1]
                messages.error(request, f"Duplicate entry: {duplicate_value}")
            else:
                messages.error(request, f"Database Error: {e}")

        return render(request, 'tracking/edit_stop.html', {'route_stop': route_stop})
    else:
        return redirect("login")


@login_required(login_url='login')
def route_stop_view(request):
    if request.user.profile.user_type == 'admin':
        route_stop_data = []
        message = ""
        route_no = "" 

        if request.method == 'POST':
            route_no = request.POST.get('route_no')
            query = """
            SELECT * FROM route_stop
            WHERE route_no = %s
            ORDER BY stop_no ASC
            """

            with connections['second_db'].cursor() as cursor:
                cursor.execute(query, [route_no])
                route_stop_data = cursor.fetchall()

                if not route_stop_data:
                    message = f"No stops found for Route No: {route_no}"

        return render(request, 'tracking/get_stop_data.html', {'route_stop_data': route_stop_data, 'message': message})
    else:
        return redirect("login")
    

#-----------------------------------------------working code parent ---------------------------------------------------------------------------------------------------------------------------#
@login_required(login_url='login')
def route_location(request, route_no=None):
    if request.user.profile.user_type == 'parent':
        error_message = None

        student_id = request.COOKIES.get('my_cookie')
        route_no = StudentDetails.objects.get(student_id=student_id).route_no

        if route_no is not None:
            try:
                with connections['second_db'].cursor() as cursor:
                    # Your additional query to fetch data from route_stop
                    cursor.execute("SELECT * FROM route_stop WHERE route_no = %s ORDER BY stop_no ASC", [route_no])
                    route_stop_data = cursor.fetchall()

                    # Call the stored procedure
                    cursor.callproc('route_Location', [route_no])
                    route_track_data = cursor.fetchall()

                    # Create a dictionary to store the results
                    results = {}

                    # Store the results from the query
                    results['route_stop_data'] = route_stop_data

                    # Store the results from the stored procedure
                    results['route_track_data'] = route_track_data

                    # Render the page with the results
                    return render(request, 'parent_app/route_location.html', {'results': results})

            except Exception as e:
                error_message = f"An error occurred: {str(e)}"

        return render(request, 'parent_app/route_location.html', {'error_message': error_message})
    else:
        return redirect("login")


#---------------BELOW-CODE FOR APP - API TO SEND ROUTE STOPS AND LIVE LOCATION OF THE STUDENT ------------------------------------------------------------

# wroking code and sent to app when they post the student_id to the store proc named - route_Location 
    
@csrf_exempt
def route_location_api(request):
    if request.method == 'POST':
        try:
            data = json.loads(request.body.decode('utf-8'))
            student_id = data.get('student_id')
            if student_id is not None:
                student = StudentDetails.objects.get(student_id=student_id)
                route_no = student.route_no
                with connections['second_db'].cursor() as cursor:
                    cursor.execute("SELECT * FROM route_stop WHERE route_no = %s ORDER BY stop_no ASC", [route_no])
                    route_stop_data = cursor.fetchall()
                    cursor.callproc('route_Location', [route_no])
                    route_track_data = cursor.fetchall()
                    results = {}
                    results['route_stop_data'] = route_stop_data
                    results['route_track_data'] = route_track_data
                    return JsonResponse(results, safe=False)
            else:
                return JsonResponse({'error': 'student_id is required'}, status=400)
        except StudentDetails.DoesNotExist:
            return JsonResponse({'error': 'Student not found'}, status=404)
        except Exception as e:
            return JsonResponse({'error': str(e)}, status=500)
    return JsonResponse({'error': 'Invalid request method'}, status=405)



