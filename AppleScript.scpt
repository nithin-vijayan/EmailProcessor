set outputFile to ((path to desktop as text) & "Output.txt")

set fileReference to open for access file outputFile with write permission

tell application "Mail"

	check for new mail

	delay 1
  	*change 'AppleScript' to smartbox or inbox and 'Apple' to account name ( ie Gmail or icloud etc )*
	set unreadMessages to (get every message of mailbox "AppleScript" of account "Apple" whose read status is false)

	repeat with eachMessage in unreadMessages

		set messageContent to content of eachMessage

		write messageContent to fileReference

		set read status of eachMessage to true

	end repeat

end tell

 

close access fileReference
