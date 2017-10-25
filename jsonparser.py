import json
from pprint import pprint

class jsonparse(object):
	def __init__(self,path,device):
		with open(path) as data_file:
			self.device=device
			self.data = json.load(data_file)
	
	def getting_key_from_dictionary(self):
		for k,v in self.data.items():
			self.key=k
			return self.key

	def getting_attributes_of_phones(self):
		self.getting_key_from_dictionary()
		self.device_attribute=self.data[self.key][self.device]
		return self.device_attribute
		print self.device_attribute
	


	def get_values_from_json(self,key):
		self.getting_attributes_of_phones()
		self.title=self.device_attribute[key]
		return self.title
		#for key in kwargs:
			#print key








		
#pprint(data)
#print type(data)
#print data
##	print v
	#print v
#print(data['widget']['image']['name'])
#print(data['widget']['window']['title'])
#print(data['widget']['window'])


abc=jsonparse('D:\Users\pankaj-m\Desktop\Pankaj_Robot_work\POC\sample_json.json','S6')
abc.getting_attributes_of_phones()
#print abc.get_values_from_json('height')
#print abc.a
#data={'title':5}
#data=abc.a
#print abc.get_values_from_json('title',**data)
