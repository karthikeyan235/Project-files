from django.db import models

class StudentDetails(models.Model):
    GENDER_CHOICES = [
        ('', 'Select gender'),
        ('M', 'Male'),
        ('F', 'Female'),
        ('O', 'Other'),
    ]
    PARENT_RELATION_CHOICES = [
        ('', 'Select parent relation'),
        ('F', 'Father'),
        ('M', 'Mother'),
        ('G', 'Guardian'),
    ]
    ENABLE_CHOICES = [
        (True,'Enable'),
        (False,'Disable'),
    ]

    name        = models.CharField(max_length=100)
    student_id  = models.CharField(max_length=20, unique=True)
    roll_no     = models.SmallIntegerField(null=True,blank=True)
    tag_id      = models.BigIntegerField()
    tag_id_hex  = models.CharField(max_length=20)
    dob         = models.DateField(null=True, blank=True)
    address     = models.TextField(null=True, blank=True)
    gender      = models.CharField(max_length=1, choices=GENDER_CHOICES,null=True, blank=True)
    parent_name1     = models.CharField(max_length=100)
    parent_relation1 = models.CharField(max_length=1, choices=PARENT_RELATION_CHOICES)
    parent_name2     = models.CharField(max_length=100, blank=True, null=True)
    parent_relation2 = models.CharField(max_length=1, choices=PARENT_RELATION_CHOICES, blank=True, null=True)
    mobno       = models.CharField(max_length=10)
    email       = models.EmailField()
    class_name  = models.CharField(max_length=10)
    section     = models.CharField(max_length=1)
    doj         = models.DateField(null=True, blank=True)
    route_no    = models.CharField(max_length=50,null=True, blank=True)
    stop_no = models.IntegerField(null=True, blank=True)
    enabled     = models.BooleanField(choices=ENABLE_CHOICES,default=True)
    # profile_image = models.ImageField(upload_to='student_images/', null=True, blank=True)
    profile_image = models.ImageField(upload_to='student_images', default='student_images/default_image.jpg')

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'tbl_studentdetails'


class TeacherDetails(models.Model):
    name        = models.CharField(max_length=100)
    teacher_id  = models.CharField(max_length=20, unique=True)
    tag_id      = models.BigIntegerField()
    tag_id_hex  = models.CharField(max_length=20)
    email       = models.EmailField()
    mobno       = models.CharField(max_length=15)
    gender      = models.CharField(max_length=1, choices=StudentDetails.GENDER_CHOICES)
    enabled     = models.BooleanField(choices=StudentDetails.ENABLE_CHOICES,default=True)

    class Meta:
        db_table = 'tbl_teacherdetails'

    def __str__(self):
        return self.name
    

class OthersDetails(models.Model):
    name        = models.CharField(max_length=100)
    staff_id    = models.CharField(max_length=20, unique=True)
    tag_id      = models.BigIntegerField()
    tag_id_hex  = models.CharField(max_length=20)
    email       = models.EmailField(null=True,blank=True)
    mobno       = models.CharField(max_length=15)
    gender      = models.CharField(max_length=1, choices=StudentDetails.GENDER_CHOICES)
    enabled     = models.BooleanField(choices=StudentDetails.ENABLE_CHOICES,default=True)

    class Meta:
        db_table = 'tbl_staffdetails'

    def __str__(self):
        return self.name

class MobileDeviceIds(models.Model):
    student_id  = models.CharField(max_length=20, unique=True)
    device_id   = models.CharField(max_length=5000,blank=True,null=True)

    class Meta:
        db_table = 'tbl_deviceids'

    def __str__(self):
        return self.student_id

class ClassSection(models.Model):
    class_number = models.CharField(max_length=10)
    section = models.CharField(max_length=1)

    class Meta:
        db_table = 'tbl_classsections'

    def __str__(self):
        return f"Class {self.class_number}, Section {self.section}"


class Timetable(models.Model):
    DAY_CHOICES = [
        ('Monday', 'Monday'),
        ('Tuesday', 'Tuesday'),
        ('Wednesday', 'Wednesday'),
        ('Thursday', 'Thursday'),
        ('Friday', 'Friday'),
        ('Saturday', 'Saturday'),
        ('Sunday', 'Sunday'),
    ]

    PERIOD_CHOICES = [
            ('p1','PERIOD 1'),
            ('p2','PERIOD 2'),
            ('p3','PERIOD 3'),
            ('p4','PERIOD 4'),
            ('p5','PERIOD 5'),
            ('p6','PERIOD 6'),
            ('p7','PERIOD 7'),
            ('p8','PERIOD 8'),
    ]

    day_of_week = models.CharField(max_length=10, choices=DAY_CHOICES)
    period_name = models.CharField(max_length=10,choices=PERIOD_CHOICES)
    start_time = models.TimeField()
    end_time = models.TimeField()
    teacher_id = models.CharField(max_length=20,blank=True,null=True)  # Store teacher ID or code
    class_name = models.CharField(max_length=10)  # Store class code
    section = models.CharField(max_length=5)

    class Meta:
        db_table = 'tbl_timetable'

    def __str__(self):
        return f"{self.day_of_week} - {self.period_name}-{self.class_name}-{self.section}"


class Holiday(models.Model):
    from_date = models.DateField()
    to_date = models.DateField()
    holiday_name = models.CharField(max_length=100)
    holiday_code = models.CharField(max_length=3,unique=True)

    class Meta:
        db_table = 'tbl_holidays'

    def __str__(self):
        return self.holiday_name


class PeriodTable(models.Model):
    period_id = models.CharField(max_length=2,unique=True)
    period_name = models.CharField(max_length = 20,unique=True)

    class Meta:
        db_table = 'tbl_period'

    def __str__(self):
        return f'{self.period_id}-{self.period_name}'


class SchoolTimings(models.Model):
    day_of_week = models.CharField(max_length=10, choices=Timetable.DAY_CHOICES)
    start_time = models.TimeField()
    end_time = models.TimeField()

    class Meta:
        db_table = 'tbl_schooltimings'

    def __str__(self):
        return f'{self.day_of_week}'


class SchoolSpecialTimings(models.Model):
    date = models.DateField()
    start_time = models.TimeField()
    end_time = models.TimeField()

    class Meta:
        db_table = 'tbl_schoolspecialtimings'

    def __str__(self):
        return f'{self.date} - {self.start_time} to {self.end_time}'