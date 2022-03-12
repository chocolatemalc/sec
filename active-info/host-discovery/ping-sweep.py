#!/usr/bin/python3

import os
for number in range(35,100):
	os.system(f'ping -c 1 10.11.1.{number} |grep "bytes from" |cut -d" " -f 4 |cut -d":" -f 1 &')
