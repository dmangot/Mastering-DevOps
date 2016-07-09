#!/usr/bin/env python

import socket
import time
from random import randint

# mark start time
timestart = int(time.time())
# some things happen here
time.sleep(randint(0,5))
# mark end time
timecomplete = int(time.time())

# subtract start from finish
elapsedtime = timecomplete - timestart
# format message
message = 'mastering.devops.python.elapsed {} {}\n'.format(elapsedtime,timecomplete)

# fire away!
sock = socket.socket()
sock.connect(('127.0.0.1', 22003))
sock.sendall(message)
sock.close()
