#!/bin/bash 
find /Users/zazaidi/Google\ Drive/textmate/ -exec grep -ni "#Task-" {} + | cut -f3 -d":" | cut -f2 -d"-" > tasks.md
find /Users/zazaidi/Google\ Drive/textmate/ -exec grep -ni ":Completed" {} + | cut -f3 -d":" | cut -f2 -d"-" > completed.md
find /Users/zazaidi/Google\ Drive/textmate/ -exec grep -ni "http://" {} + > bookmarks.md
FILENAME="completed.md"
file="tasks.md"
grep -v -x -f completed.md tasks.md | cat > tasks3.md && mv tasks3.md tasks.md
