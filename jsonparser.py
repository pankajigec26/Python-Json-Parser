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
		






