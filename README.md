# EmailProcessor

Script is devloped using AppleScript.  Runs on MacOSx utilizing  the interface with built in Mail Application.
User need to configure his account with built in mail App. 

The Parameters mailbox name and account name should be changed to user mailbox name ( either inbox or smartbox ) and account name configured.

  	*change 'AppleScript' to smartbox or inbox and 'Apple' to account name ( ie Gmail or icloud etc )*


The application automatically marks the processed mails as read.

The script can be scheduled to run periodically using cronjobs. Refer crontabs

The script can be modified to perform some processing on mail content by changing the line 'write messageContent to fileReference' to whatever process is to be done with message content.


