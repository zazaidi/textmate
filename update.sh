#!/bin/bash 
now=$(date +"%m_%d_%Y")
time=$(date +"%T")

$verse=$(curl -s http://ayatalquran.com/random | grep '<h2 id="aya_text">' | awk -Ftext '{print $NF}' | cut -f1 -d"<" | cut -f2 -d">")

say "$time $verse"
cd /Users/zazaidi/Google\ Drive/textmate/
if [ ! -f /Users/zazaidi/Google\ Drive/textmate/$now/private.md  ]; then
	mkdir -p /Users/zazaidi/Google\ Drive/textmate/$now
	touch /Users/zazaidi/Google\ Drive/textmate/$now/private.md
	touch /Users/zazaidi/Google\ Drive/textmate/$now/work.md
	touch /Users/zazaidi/Google\ Drive/textmate/$now/research.md
	echo "$now | Private | ZZ " > /Users/zazaidi/Google\ Drive/textmate/$now/private.md
	echo "$now | Work | ZZ " > /Users/zazaidi/Google\ Drive/textmate/$now/work.md
	echo "$now | Research | ZZ " > /Users/zazaidi/Google\ Drive/textmate/$now/research.md
	/usr/local/git/bin/git add .
	/usr/local/git/bin/git commit -am "Adding files for $now"
	/usr/local/git/bin/git push origin master
else 
	echo "* $time" >> /Users/zazaidi/Google\ Drive/textmate/$now/private.md
	echo "* $time" >> /Users/zazaidi/Google\ Drive/textmate/$now/work.md	
	echo "* $time" >> /Users/zazaidi/Google\ Drive/textmate/$now/research.md
	/usr/local/git/bin/git add .
    /usr/local/git/bin/git commit -am "Hourly Update"
	/usr/local/git/bin/git push origin master
	~/bin/mate /Users/zazaidi/Google\ Drive/textmate/$now/work.md
fi


