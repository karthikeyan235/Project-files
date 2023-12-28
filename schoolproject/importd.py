import time
import serial

ser = serial.Serial(
   port='Enter Port',
   baudrate=9600,
   parity=serial.PARITY_ODD,
   stopbits=serial.STOPBITS_TWO,
   bytesize=serial.SEVENBITS
)

input = 1
while 1:
   input = input("input >> ")
   if input == 'exit':
      ser.close()
      exit()
	  
`  else:
      ser.write(input + '\r\n')
	   out = ''.


time.sleep(1)
while ser.inWaiting() > 0:
   out += ser.read(1)

if out != '':
   print("output >>  " + out)
   