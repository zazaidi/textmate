#!/usr/bin/env python
# encoding: utf-8
"""
findtag.py

Created by zazaidi on 2013-05-23.
Copyright (c) 2013 __MyCompanyName__. All rights reserved.
"""

import sys
import os
directory = "/Users/zazaidi/Documents/UTO/textmate"
for files in os.walk(directory):
	for file in files:
		f=open(file,'r')
		for line in f:
				print line
				break
		f.close()