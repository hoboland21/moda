#!/usr/bin/python
#for i in $(curl --user deployer:tcmoda http://rh-stg-01:8081/manager/text/list) 


from requests import get

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
 ?-Rescan			
 Q-Cancel 
 '''

ENVIRON =(
	'stg-01','stg2-01','stg3-01','st-01','st2-01','st3-01',
	'mo-01','mo2-01','mo3-01','mo3-02','prd-01','prd-02','drc-01')
#-----------------------------------
def clean_digit(prompt) :
#-----------------------------------
	ri = raw_input(prompt)
	if ri.isdigit() :
		return int(ri)
	return -1
#-----------------------------------

#-----------------------------------------------
class TCapp(object) :
	def __init__(self):
		self.appl_array = []
		self.appselect = 0
		pass		
#-----------------------------------------------
	def curl(self,command) :
		cmdDict = { "start": "start?path=",
				"list":"list",
				"stop":"stop?path="}
		
		cmd = cmdDict[command]
		if command in ("start","stop") :
			cmd += self.appl_array[self.appselect][1][0]
			print cmd
		self.url= "http://rh-{}:{}/manager/text/{}".format(self.environ,self.port,cmd)
		auth = ("deployer","tcmoda")
		self.response=get(self.url,auth=auth) 
	

#-----------------------------------------------
	def convert_list(self) :
		self.curl("list")
		print self.url
		for ar in self.response.text.split('\n'):
			if len(ar) and ar[0] == "/" and not ar[1] == ":" :
				app = ar.split(":")
				appname = str(app[3])
				self.appl_array.append((appname,app))
		self.response.close()

#-----------------------------------------------
	def scanlist(self) :
		self.response.close()
		self.convert_list()
		print self.appl_array[self.appselect][1]



#-----------------------------------------------
	def intro_start(self) :
		print intro_block
		self.sequence()

#-----------------------------------------------
	def sequence(self) :
		self.appl_array = []
		self.environ = ''
		ecntr = 0
		for e in ENVIRON :
			print(e)
		#--- set up environment
		self.environ = ""
		while self.environ not in ENVIRON:
			self.environ =raw_input("\nEnter environment: ")
		
		#--- port number import
		port = 0
		while port not in range(1,8) :
			port = clean_digit("\nEnter TC0x number - value 1-8: ")
		
		self.tc_number = port
		self.port = port + 8080

		#--- application select 
		self.convert_list()
		appl_select = -1
		for indx in range(0,len(self.appl_array)) :
			print "{}. {} --- {}".format(indx,self.appl_array[indx][0],self.appl_array[indx][1])
		
		while appl_select not in range(0,len(self.appl_array)) :
			appl_select  = clean_digit("\nEnter Application number ") 
		
		self.appselect = appl_select

		#--- going to the action loop
		self.appstring = "{} TC0{} - {}".format(self.environ,self.tc_number,self.appl_array[appl_select][1]) 
		self.selection_menu()

#-----------------------------------------------
	def selection_menu(self) :
		print menu_block.format(self.appstring)
		action = ""
		while action not in ["q","Q"] :
			action = raw_input("\nEnter Response:") 
			if action in ["S","s"] :
				print "Starting ",self.appstring
				self.curl("start")
			elif action in ["X","x"] :
				print "Stopping ",self.appstring
				self.curl("stop")
			elif action in ["?"] :
				self.scanlist()
			elif action in ["C","c"] :
				self.sequence()
		
		print "\nQuitting\n"
#-----------------------------------------------
#-----------------------------------------------

tc = TCapp()
tc.intro_start()		




	

