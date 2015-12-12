#!/usr/lib/bin 
#Filename:youdao.py

#coding="utf-8"

import urllib2
import sys
import json

def print_dict(result):
	for key,value in result.items():
		#key=json.dumps(key,encoding='utf-8',ensure_ascii=False)
#		result=result.read()
#		result=json.loads(result)
		if key=='translation':
			print key,value
		else:
			pass
		
def translate(url,word):
	html=urllib2.urlopen(url+word)
	print "result:"+html.read()

#	print_dict(result)

#	result=json.dumps(result,ensure_ascii=False,encoding='gb2312',indent=None)

#	print type(result)


#	print result

def main():
	url="http://fanyi.youdao.com/openapi.do?keyfrom=oldfriends-wang&key=1908356382&type=data&doctype=json&version=1.1&q="
	word=raw_input("word:")
	translate(url,word)


if __name__=="__main__":
	main()


