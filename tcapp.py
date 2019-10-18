#!/usr/bin/python
from requests import get

#for i in $(curl --user deployer:tcmoda http://rh-stg-01:8081/manager/text/list) 



#-----------------------------------
def clean_digit(prompt) :
#-----------------------------------
	ri = raw_input(prompt)
	if ri.isdigit() :
		return int(ri)
	return -1
#-----------------------------------


intro_block = '''
*********************************************
*******                             *********
*******  TOMCAT APPLICATION CONTROL *********
*******                             *********
*********************************************
\n\nAvailable Environments
-------------------------
'''

menu_block = '''
----------------------- 
{}                       
-----------------------
 S-Start		
 X-Stop					
 C-Change Application	
			
 Q-Cancel".format(appstring)
'''


ENVIRON =(
	'stg-01','stg2-01','stg3-01','st-01','st2-01','st3-01',
	'mo-01','mo2-01','mo3-01','mo3-02','prd-01','prd-02','drc-01')


#-----------------------------------------------
class Tcapp(object) :
	def __init__(self):
		pass		
#-----------------------------------------------
	def curl(self) :
		url= "http://rh-{}:{}/manager/text/list".format(self.environ,self.port)
		auth = ("deployer","tcmoda")
		response=get(url,auth=auth) 

	def 
	appl_array = []

	for ar in response.text.split('\n'):
		if len(ar) and ar[0] == "/" and not ar[1] == ":" :
			app = ar.split(":")
			appl_array.append(str(app[0][1:]))



	def sequence(self) :
		ecntr = 0
		for e in ENVIRON :
			print(e)

		environ = ""
		while environ not in ENVIRON:
			environ =raw_input("\nEnter environment: ")
		#--- port number import
		port = 0
		while port not in range(1,8) :
			port = clean_digit("\nEnter TC0x number - value 1-8: ")
		self.tc_number = port
		self.port = port + 8080





		
	for indx in range(0,len(appl_array)) :
		print "{}. {}".format(indx,appl_array[indx])

	appl_select = -1

	while appl_select not in range(0,len(appl_array)) :
		appl_select  = int(raw_input("\nEnter Application number ") )

	action = ""

	appstring = "{} TC0{} - {}".format(environ,port,appl_array[appl_select]) 


	while action not in ["q","Q"] :
		action = raw_input("\nEnter Response:") 
		if action in ["S","s"] :
			print "Starting ",appstring
		elif action in ["X","x"] :
			print "Stopping ",appstring
		elif action in ["C","c"] :
			print "Changing Applications"
	print "\nQuitting\n"


