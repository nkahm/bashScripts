import incsim as ins
import numpy as n
import math as m
import os,re
import shutil
import fileinput

searchquery = 'boxMatrix'
numParticles = 512 + 2

os.system("tail +`grep -in boxMatrix test.pos | tail -1 | awk -F: '{print $1}'` test.pos > output.pos")

'''
mc = '/Users/nkahm/Projects/incsimBeth_DPmod/bin/MCsphinx' #path to MC simulator

for fn in os.listdir('/Users/nkahm/Projects/DP_Bethv2/P2N_r1.0/n8'):
	print fn
	ifilePath = "/Users/nkahm/Projects/DP_Bethv2/P2N_r1.0/n8/%s"%(fn)
	ofilePath = re.sub("(.*)\.pos\Z", '\\1_DP.pos',ifilePath)
	print ofilePath
	termOutput = re.sub("(.*)\.pos\Z", '\\1.out',ifilePath)
	ofile = open(termOutput,'a')
	init = "load %s"%(ifilePath)
	print init
	instructions = "findDP %s"%(ofilePath)
	proc = ins.Simulation(mc,ifilePath,ofile)
	proc.send(init)
	check = proc.initialized
	print check
	proc.send(instructions)
	end=proc.quit()
	print "Calculated DP for %s"%(fn)
	print end

quit
'''
