# Python-Json-Parser

This simple framework is aim to parse json data and then use the parse data in #robotframework

Consider Node ("s6","ios") from  sample_json

all the values between the nodes are stored in a dictionary as key value pair e.g. "title" as key and "android" as value



our target is to create variable dynamically in a robot file with values assigned to them as per json 
eg below variable at runtime  with values

#title=android

Some descriptions for the file present 

#Sample_json.json

Sample json file to give demo

#jsonparser.py 
Pyhton file which have methods defined to parse the data 

#json_env.py
A python file where you declare some variables to start with 

	device='S6'
	dest_device='ios'
	path='sample_json.json'
	
#Calling.robot

Main robot file which actually creates variables dynamically and assign values to them as present in json

#run.bat
command to run this framework is stored here , we are passing json_env.py at runtime
