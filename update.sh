#!/bin/bash 
now=$(date +"%m_%d_%Y")
cd /Users/zazaidi/Documents/UTO/textmate/
if [ ! -f /Users/zazaidi/Documents/UTO/textmate/$now.md  ]; then
	touch /Users/zazaidi/Documents/UTO/textmate/$now.md
	echo "$now | ZZ " > /Users/zazaidi/Documents/UTO/textmate/$now.md
	/usr/local/git/bin/git add $now.md
	/usr/local/git/bin/git commit -am "Adding file for $now"
	/usr/local/git/bin/git push origin master
else 
/usr/local/git/bin/git add .
/usr/local/git/bin/git commit -am "Update"
/usr/local/git/bin/git push origin master
~/bin/mate /Users/zazaidi/Documents/UTO/textmate/$now.md
	
fi


