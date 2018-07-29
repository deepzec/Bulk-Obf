#!/bin/bash
echo "
     ____  _   _ _     _  __      ___  ____  _____ 
    | __ )| | | | |   | |/ /     / _ \| __ )|  ___|
    |  _ \| | | | |   | ' /_____| | | |  _ \| |_   
    | |_) | |_| | |___| . \_____| |_| | |_) |  _|  
    |____/ \___/|_____|_|\_\     \___/|____/|_|

== Bulk malicious domain Obfuscation | De-obfuscation tool ==

By DeepZec
"
filename="$1"
display_usage() { 
 
	echo -e "\nUsage:\n./bulk_obf.sh [input_file]  [1: Obfuscation | 2: Deobfuscation] \n" 
	echo -e "\n Example:\n./bulk_obf.sh domains.txt 1 \n"
		}
if [  $# -le 1 ]; 
	then 
		display_usage
		exit 1
	fi 

if [ "$2" == 2 ]; 
then
	sed 's/\[.]/./g' $filename > de_$filename
	echo "Output file : de_$filename"  
	
elif [ "$2" == 1 ];
then 
	sed 's/\./[.]/g' $filename > obf_$filename
	echo "Output file : obf_$filename"
else
	echo "Invalid options"
fi
