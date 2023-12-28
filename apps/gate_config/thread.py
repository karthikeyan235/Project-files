import threading
import time
from pyfcm import FCMNotification
from apps.admin_apps.registration_app.models import *
from datetime import datetime, timedelta, date
from django.db import connection

class NotificationThread (threading.Thread):
	def __init__(self, id_list):
		self.id_list = id_list
		threading.Thread.__init__(self)

	def run(self):
		try:
			if self.id_list != ['']:
				print('start')
				str_ids = ','.join(self.id_list)+','
				today = datetime.now()
				day_name = today.strftime("%A")
				curr_date = today.date()
				curr_time = today.time()
				today = date.today()
				if SchoolSpecialTimings.objects.filter(date=today).exists():
					school_time = SchoolSpecialTimings.objects.get(date=today)
				else:
					school_time = SchoolTimings.objects.get(day_of_week=day_name)

				start_time = school_time.start_time
				end_time = school_time.end_time
				time_difference = timedelta(hours=2.5)
				in_lower_limit = (datetime.combine(curr_date, start_time) - time_difference).time()
				in_upper_limit = (datetime.combine(curr_date, start_time) + time_difference).time()
				out_lower_limit = (datetime.combine(curr_date, end_time) - time_difference).time()
				out_upper_limit = (datetime.combine(curr_date, end_time) + time_difference).time()

				if in_lower_limit <= curr_time <= in_upper_limit:
					with connection.cursor() as cursor:
					 	cursor.callproc('sproc_gate_notification',(str_ids,in_lower_limit,in_upper_limit,1))
					 	res = cursor.fetchall()[0]
					 	print(res)
					 	if res[0]:
					 		MobileNotificationThread(res[0],1).start()

				elif out_lower_limit <= curr_time <= out_upper_limit:
					with connection.cursor() as cursor:
					 	cursor.callproc('sproc_gate_notification',(str_ids,out_lower_limit,out_upper_limit,0))
					 	res = cursor.fetchall()[0]
					 	if res[0]:
					 		MobileNotificationThread(res[0],0).start()
		except Exception as e:
			print(e)


class MobileNotificationThread (threading.Thread):
	def __init__(self, student_ids, option):
		self.student_ids = student_ids
		self.option = option
		threading.Thread.__init__(self)

	def run(self):
		try:
			print('second thread')
			std_ids = self.student_ids.split(',')
			for i in std_ids[:-1]:
				name = StudentDetails.objects.get(student_id=i).name
				token = MobileDeviceIds.objects.get(student_id=i).device_id
				tokens = token.split(',')
				for i in tokens:
					send_notification_to_device(i,self.option,name)
		except Exception as e:
			print(e)


def send_notification_to_device(DEVICE_TOKEN, option, name):
    try:
        FCM_SERVER_KEY = "AAAA-AhWjqg:APA91bEcKzsxYIPjpgL8Rp8lrfOz969w5kEiDhHZZpfOzmGlYGkfAzMRxyiJXjuNDzK9zGWn_1ARDsQ97TVstJ2OB59knXLhKkxC-N25oD3dRW0RE47t6kWksiAH3lbBs8D2OO-6_X3L"
        push_service = FCMNotification(api_key=FCM_SERVER_KEY)

        message_title1 = f"School notification"
        message_body1 = f"{name} has entered the school."

        message_title2 = f"School notification"
        message_body2 = f"{name} has left the school at {datetime.now().strftime('%H:%M')}."

        if option:
            result = push_service.notify_single_device(registration_id=DEVICE_TOKEN, message_title=message_title1, message_body=message_body1)
            print('send')
        else:
            result = push_service.notify_single_device(registration_id=DEVICE_TOKEN, message_title=message_title2, message_body=message_body2)

    except Exception as e:
        print(e)

