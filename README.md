# Python-Json-Parser

This simple framework is aim to parse json data , nodes in current case  , and then use their values in robotframework.

Consider Node ("s6","ios") kindly refer  sample_json
all the values between the nodes are stored in a dictionary as key value pair
e.g.
"title" as key and "android" as value

and at runtime new variables are getting created based on the keys present in dictionary and been assigned to their respective values in calling.robot
eg.
variable title created dynamically with value
title=android

A liitle talk on the files present in this repository

Sample_json.json

Sample json file to give demo

jsonparser.py 
Pyhton file which have methods defined to parse the data 

json_env.py
A python file where you declare some variables to start with 

	device='S6'
	dest_device='ios'
	path='sample_json.json'
	
Calling.robot

Main robot file which actually creates variables dynamically and assign values to them as present in json

run.bat
command to run this framework is stored here , we are passing json_env.py at runtime
