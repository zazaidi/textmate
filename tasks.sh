#!/bin/bash 
find /Users/zazaidi/Google\ Drive/textmate/ -exec grep -ni "#Task-" {} + | cut -f3 -d":" | cut -f2 -d"-" > tasks.md
find /Users/zazaidi/Google\ Drive/textmate/ -exec grep -ni ":Completed" {} + | cut -f3 -d":" | cut -f2 -d"-" > completed.md