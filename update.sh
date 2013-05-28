#!/bin/bash 
now=$(date +"%m_%d_%Y")
cd /Users/zazaidi/Documents/UTO/textmate/
if [ ! -f /Users/zazaidi/Documents/UTO/textmate/$now/private.md  ]; then
	mkdir -p /Users/zazaidi/Documents/UTO/textmate/$now
	touch /Users/zazaidi/Documents/UTO/textmate/$now/private.md
	touch /Users/zazaidi/Documents/UTO/textmate/$now/work.md
	touch /Users/zazaidi/Documents/UTO/textmate/$now/research.md
	echo "$now | Private | ZZ " > /Users/zazaidi/Documents/UTO/textmate/$now/private.md
	echo "$now | Work | ZZ " > /Users/zazaidi/Documents/UTO/textmate/$now/work.md
	echo "$now | Research | ZZ " > /Users/zazaidi/Documents/UTO/textmate/$now/research.md
	/usr/local/git/bin/git add .
	/usr/local/git/bin/git commit -am "Adding files for $now"
	/usr/local/git/bin/git push origin master
else 
/usr/local/git/bin/git add .
/usr/local/git/bin/git commit -am "Update"
/usr/local/git/bin/git push origin master
~/bin/mate /Users/zazaidi/Documents/UTO/textmate/$now/private.md
	
fi


