(*
	Set shortcuts for Wadsworth (Jump to N% for VLC)

	Requires Assistive Device access in order to run.
	Also requires Wadsworth extensions for VLC or Automator scripts to be installed. 
	See this link for details:
	https://github.com/verbiate/Wadsworth-Jump-to-N-for-VLC
*)

tell application "System Preferences"
	reveal anchor "shortcutsTab" of pane id "com.apple.preference.keyboard"
	activate
end tell

tell application "System Events"
	tell application process "System Preferences"
		
		--Wait for the window to draw
		repeat while not (window 1 exists)
		end repeat
		tell window 1
			
			--Wait for the elements to draw
			repeat while not (rows of table 1 of scroll area 1 of splitter group 1 of tab group 1 exists)
			end repeat
			
			--Go through each row of the list on the left and select App Shortcuts
			repeat with current_row in (rows of table 1 of scroll area 1 of splitter group 1 of tab group 1)
				if value of static text 1 of current_row is equal to "App Shortcuts" then
					select current_row
				end if
			end repeat
			
			set i to 0
			repeat while i < 10
				log "Index:" & i
				--Click the Add (+) button
				tell group 1 of tab group 1
					set plusAddButton to (first button where its description = "add")
				end tell
				click plusAddButton
				--Wait for the elements to draw
				repeat while not (pop up button 1 of sheet 1 exists)
				end repeat
				
				--Set the Application to VLC
				if i is 0 then
					set appPopupMenu to pop up button 1 of sheet 1
					tell appPopupMenu
						click appPopupMenu
						keystroke "vlc"
						keystroke return
						--This is a buggy technique with this menu, so we introduce a delay to allow the UI to catch up
						delay 0.5
					end tell
				end if
				--Set the shortcut for Jump to n%
				if i is 0 then
					keystroke "Jump to " & i & "%"
				else
					keystroke "Jump to " & i & "0%"
				end if
				keystroke tab
				key down command
				key down option
				--key down control
				keystroke i
				--key up control
				key up option
				key up command
				click button "Add" of sheet 1
				set i to i + 1
			end repeat
		end tell
	end tell
end tell
