
Hardware:
 Raspberry Pi (with wifi adapter)
 SG90 Micro Servo
 3d Printed Dispenser




Servo control via GPIO: I tried manually controlling the servo but experienced some jitters because it is difficult to get pulse width modulation correct. 
I'm using ServoBlaster which provides an interface to drive the sero via the GPIO pins. I believe I have Servo 0 mapped to GPIO 7. You can map it to whatever you want but 
keep in mind that the scripts to drive the servo will be sending commands to servo 0. Everything you need to know about using ServoBlaster and a Raspberry Pi is located
at the ServoBlaster github repo: https://github.com/richardghirst/PiBits/tree/master/ServoBlaster

Camera: I'm using a generic webcam. To run it, I'm using mjpg-streamer. The project details are located here: https://github.com/jacksonliam/mjpg-streamer
The compiled version is located in /src

Page Template: The actual page is a tempalte created by html5up.net. I hate people who use absolute paths. I used an absolute path within the template to point to the url
of the streaming video created by mjpg-streamer.

3d Objects: The .stl files necessary to get the dispenser 3d printed are located in /src 

