
set ab to current date
set timenow to time of (current date)
set filterdate to (ab - timenow) --Edit this line to change mail fetch duration, (Fetches form 12 pm present day) Subtract days or hours to change duration--


set outputFile to ((path to desktop as text) & "Output.txt") -- open  output file --

set fileReference to open for access file outputFile with write permission

tell application "Mail"

	check for new mail

	delay 1
	set unreadMessages to (get every message of mailbox "AppleScript" of account "Apple" whose (date received) is greater than filterdate)

	repeat with eachMessage in unreadMessages

		set messageContent to content of eachMessage 

		write messageContent to fileReference -- Write contetn ot file--

		set read status of eachMessage to true

	end repeat

end tell

 

close access fileReference
