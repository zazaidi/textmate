05_30_2013 | Work | ZZ 
* 01:01:00
* 02:01:01
* 03:01:00
* 04:01:00
<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
<<<<<<< Local Changes
#Day
Today I will work on =======
* 10:01:00
>>>>>>> External Changes
UTO Webhosting meeting.
Bunch of tickets in DRUP https://asudev.jira.com/browse/DRUP

Work more on doing running the export script to get links for Drupal sites remotely from all servers. 

Created a useraccount on webhost-test.asu.edu username: test passwd: qazwsxedc!
=======
* 10:01:00
* 11:01:00
>>>>>>> External Changes
Working on getting PHP to work from dev-drupal to login into remote servers and execute commands.
Also installed the ssh-helper module to create keypair=======
* 10:01:00
* 11:01:00
* 12:01:00
>>>>>>> External Changes
=======
* 10:01:00
* 11:01:00
* 12:01:00
* 13:01:00
>>>>>>> External Changes
I was able to get ssh_helper working on dev-drupal.asu.edu. 
I can run the following PHP script:

-
$key = ssh_helper_load_key();
// This will be our connection class, hostname is obligatory
$ssh = ssh_helper_load_ssh('webhost-test.asu.edu');
$ssh->login('test','qazwsxedc!');
echo $ssh->exec('echo hello');
- 

This will login onto the server as *test* and then run the command. 
* 14:01:00
