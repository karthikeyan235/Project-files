# Generated by Django 4.2.5 on 2023-12-25 09:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='ClassSection',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('class_number', models.PositiveIntegerField()),
                ('section', models.CharField(max_length=1)),
            ],
            options={
                'db_table': 'tbl_classsections',
            },
        ),
        migrations.CreateModel(
            name='Holiday',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('from_date', models.DateField()),
                ('to_date', models.DateField()),
                ('holiday_name', models.CharField(max_length=100)),
                ('holiday_code', models.CharField(max_length=3, unique=True)),
            ],
            options={
                'db_table': 'tbl_holidays',
            },
        ),
        migrations.CreateModel(
            name='MobileDeviceIds',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_id', models.CharField(max_length=20, unique=True)),
                ('device_id', models.CharField(blank=True, max_length=5000, null=True)),
            ],
            options={
                'db_table': 'tbl_deviceids',
            },
        ),
        migrations.CreateModel(
            name='OthersDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('staff_id', models.CharField(max_length=20, unique=True)),
                ('tag_id', models.BigIntegerField()),
                ('tag_id_hex', models.CharField(max_length=20)),
                ('email', models.EmailField(blank=True, max_length=254, null=True)),
                ('mobno', models.CharField(max_length=15)),
                ('gender', models.CharField(choices=[('', 'Select gender'), ('M', 'Male'), ('F', 'Female'), ('O', 'Other')], max_length=1)),
                ('enabled', models.BooleanField(choices=[(True, 'Enable'), (False, 'Disable')], default=True)),
            ],
            options={
                'db_table': 'tbl_staffdetails',
            },
        ),
        migrations.CreateModel(
            name='PeriodTable',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('period_id', models.CharField(max_length=2, unique=True)),
                ('period_name', models.CharField(max_length=20, unique=True)),
            ],
            options={
                'db_table': 'tbl_period',
            },
        ),
        migrations.CreateModel(
            name='SchoolSpecialTimings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('start_time', models.TimeField()),
                ('end_time', models.TimeField()),
            ],
            options={
                'db_table': 'tbl_schoolspecialtimings',
            },
        ),
        migrations.CreateModel(
            name='SchoolTimings',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('day_of_week', models.CharField(choices=[('Monday', 'Monday'), ('Tuesday', 'Tuesday'), ('Wednesday', 'Wednesday'), ('Thursday', 'Thursday'), ('Friday', 'Friday'), ('Saturday', 'Saturday'), ('Sunday', 'Sunday')], max_length=10)),
                ('start_time', models.TimeField()),
                ('end_time', models.TimeField()),
            ],
            options={
                'db_table': 'tbl_schooltimings',
            },
        ),
        migrations.CreateModel(
            name='StudentDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('student_id', models.CharField(max_length=20, unique=True)),
                ('roll_no', models.SmallIntegerField(blank=True, null=True)),
                ('tag_id', models.BigIntegerField()),
                ('tag_id_hex', models.CharField(max_length=20)),
                ('dob', models.DateField(blank=True, null=True)),
                ('address', models.TextField(blank=True, null=True)),
                ('gender', models.CharField(blank=True, choices=[('', 'Select gender'), ('M', 'Male'), ('F', 'Female'), ('O', 'Other')], max_length=1, null=True)),
                ('parent_name1', models.CharField(max_length=100)),
                ('parent_relation1', models.CharField(choices=[('', 'Select parent relation'), ('F', 'Father'), ('M', 'Mother'), ('G', 'Guardian')], max_length=1)),
                ('parent_name2', models.CharField(blank=True, max_length=100, null=True)),
                ('parent_relation2', models.CharField(blank=True, choices=[('', 'Select parent relation'), ('F', 'Father'), ('M', 'Mother'), ('G', 'Guardian')], max_length=1, null=True)),
                ('mobno', models.CharField(max_length=10)),
                ('email', models.EmailField(max_length=254)),
                ('class_name', models.CharField(max_length=10)),
                ('section', models.CharField(max_length=1)),
                ('doj', models.DateField(blank=True, null=True)),
                ('route_no', models.CharField(blank=True, max_length=50, null=True)),
                ('stop_no', models.IntegerField(blank=True, null=True)),
                ('enabled', models.BooleanField(choices=[(True, 'Enable'), (False, 'Disable')], default=True)),
                ('profile_image', models.ImageField(default='student_images/default_image.jpg', upload_to='student_images')),
            ],
            options={
                'db_table': 'tbl_studentdetails',
            },
        ),
        migrations.CreateModel(
            name='TeacherDetails',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('teacher_id', models.CharField(max_length=20, unique=True)),
                ('tag_id', models.BigIntegerField()),
                ('tag_id_hex', models.CharField(max_length=20)),
                ('email', models.EmailField(max_length=254)),
                ('mobno', models.CharField(max_length=15)),
                ('gender', models.CharField(choices=[('', 'Select gender'), ('M', 'Male'), ('F', 'Female'), ('O', 'Other')], max_length=1)),
                ('enabled', models.BooleanField(choices=[(True, 'Enable'), (False, 'Disable')], default=True)),
            ],
            options={
                'db_table': 'tbl_teacherdetails',
            },
        ),
        migrations.CreateModel(
            name='Timetable',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('day_of_week', models.CharField(choices=[('Monday', 'Monday'), ('Tuesday', 'Tuesday'), ('Wednesday', 'Wednesday'), ('Thursday', 'Thursday'), ('Friday', 'Friday'), ('Saturday', 'Saturday'), ('Sunday', 'Sunday')], max_length=10)),
                ('period_name', models.CharField(choices=[('P1', 'P1'), ('P2', 'P2'), ('P3', 'P3'), ('P4', 'P4'), ('P5', 'P5'), ('P6', 'P6')], max_length=10)),
                ('start_time', models.TimeField()),
                ('end_time', models.TimeField()),
                ('teacher_id', models.CharField(blank=True, max_length=20, null=True)),
                ('class_name', models.CharField(max_length=10)),
                ('section', models.CharField(max_length=5)),
            ],
            options={
                'db_table': 'tbl_timetable',
            },
        ),
    ]