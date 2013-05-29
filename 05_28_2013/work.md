05_28_2013 | Work | ZZ 
#Task-052813 SLS Menu Issue
SLS Menu Work
===
Need to develop an alternative solution for http://sls.asu.edu menu for mobile. 
The parent links should not be clicking but open the sub-menu allow for clicking. 
Possible solutions
> Create a mobile theme 
> Use some JS to fix the clicking issue
> Use a different kind of Drupal menu that is responsive* 13:39:47
* 13:40:13
Finished setting up my work environment to have hourly reminders. 
* 13:41:27
It is a good reminder every hour to update these files. 
Now going to investigate the sls.asu.edu site and see how the menu is constructed. 



* 14:01:00
Currently researching different solutions for the SLS menu problem. So far haven't found any Drupal specific solutions

Current Solutions
---

1. Create a mobile theme  
This seems unnecessary as the menu seems to be the only thing not functioning properly in the mobile environment. A menu specific solution seems to be the best option. 

2. CSS/JS Custom Solution (Time Consuming)  
> http://osvaldas.info/drop-down-navigation-responsive-and-touch-friendly 
> http://martinblackburn.github.io/responsive-nav/

3. Superfish Solution  
The first link seems like a viable CSS/JS based solution. I will try modifying the CSS and adding the custom JS on the Pantheon dev site and see if this simple fix will work.  
> http://drupal.org/project/superfish
Recreate the menu using Superfish which automatically has responsive behavior in menus. 
Keith granting me access on the Pantheon site. 

_Break_

* 15:01:00

The Pantheon dev site seems to be broken, may need to recreate SLS onto Pantheon. 
Just got access by Keith into Pantheon, going to now add the Superfish module and see how things look.

Working Solution
---

I was able to make it work by changing the Superfish settings in the Menu block and enabled the touchscreen option and put in User agents for it to detect. 
> http://http://dev-sls.ws.asu.edu/admin/build/block/configure/superfish/1

That should work, will need to do more testing on different devices. 

Going to work on making a script so it detects all the #Task tags and makes list of all the tasks I need to do. 
Sudo script: Loop through all the files in this directory and subdirectorys, grep for #Task and pull the line and the Date -> Save it in list and open the list sort by date and sync the tasks. Once the task is complete - Will append -Complete and so will need to remove it from the list. 
#Task-052813 SLS Menu Issue:Completed
* 16:01:00
Have made script to create tasks and completed lists 
Working on getting it so that those in completed are removed from tasks
#Task-052813 Finish Tasking System
* 21:29:33
* 22:01:00
