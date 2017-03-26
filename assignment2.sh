#!/bin/bash
#Prerequisite : Follow this document:  http://sshmenu.sourceforge.net/articles/key-setup.html
HOST_LIST=/path/to/hosts.txt

read -p "Enter command that you want to execute" commd

while read REMOTE_SERVER
do
      
###Check if Host is live or not
        nc $$REMOTE_SERVER 22 -w 1   2>/path/err.log
        if [[ $? -eq 0 ]]
	       then
              ssh $REMOTE_SERVER "$commd"
        else
        echo "Following server were not updated: $/path/err.log"
        fi
done < $HOST_LIST
