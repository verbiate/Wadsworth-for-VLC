# Wadsworth (Jump to N% for VLC)

On YouTube, pressing 0-9 will jump you to a percentage of the timeline (e.g. pressing 6 will jump to 60% of the way through the video). In an effort to recreate this functionality, this is a set of VLC extensions that jumps playback to a specific percentage of the timeline. You can use other tools (like System Preferences or Alfred on macOS or AutoHotkey on Windows) to assign keyboard shortcuts to each extension and thereby replicate this functionality. An AppleScript is also included to create these shortcuts for you in System Preferences on macOS.

## INSTALLATION OPTIONS:
There are two sets of extensions here—you will only need to install one of them. *Option A* are native VLC Extensions which should work cross-platform, while *Option B* are Automator scripts for macOS (which work more reliably and are recommended for macOS users). Lastly, there is an AppleScript which creates keyboard shortcuts on macOS that work with both Options A and B.

### 01 Option A (VLC Extensions)
_These are native VLC extensions that are expected to work cross-platform. Tested on VLC 2.x and 3.x on macOS._

**INSTRUCTIONS:**
1. Put the .lua file in the VLC subdirectory /lua/extensions, by default:
* macOS (all users): /Applications/VLC.app/Contents/MacOS/share/lua/extensions/ (right click the VLC icon in your Applications folder and choose "Show Package Contents")
* Windows (all users): %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* Windows (current user): %APPDATA%\VLC\lua\extensions\
* Linux (all users): /usr/lib/vlc/lua/extensions/
* Linux (current user): ~/.local/share/vlc/lua/extensions/
(create directories if they don't exist)
2. Restart VLC.
3. The scripts can now be found inside the VLC > Extensions menu on macOS, or the View menu on Windows and Linux.

**USAGE:**

On macOS, access the extension via the VLC menu's Extensions submenu. It's recommended to set up keyboard shortcuts via System Preferences (see the included AppleScript). Other platforms can access it via the "View" menu.

**KNOWN ISSUES:**
* Only tested on macOS. May not work correctly on other platforms.
* After triggering the extension once, the extension fails to trigger a second time. It works correctly every other time.

### 02 Option B (Automator Services)
hese are Automator Services for macOS. They work a little more reliably than the VLC extensions in Option A, and are recommended for macOS users._

**INSTRUCTIONS:**
1. Copy the Automator scripts from Option B into the user's Library > Services folder (~/Library/Services)
2. Double click on one of the newly copied Automator scripts (this causes the scripts to appear in the Services menu)
3. The scripts can now be found inside the VLC > Services menu

### 03 Create Keyboard Shortcuts
_This is an AppleScript which creates keyboard shortcuts on macOS that work with either Options A or B. This is not required—you can choose to create your own keyboard shortcuts, or none at all (?), but this creates them for you automatically._

**INSTRUCTIONS:**
1. Run the Create Keyboard Shortcuts AppleScript
2. The script will ask you to grant Script Editor permissions to Assistive Services
3. After granting permissions in System Preferences > Security & Privacy > Privacy > Accessibility, run the script again
4. The script will now create shortcuts for stops on the timeline from 0-90%
5. After this, you can now jump to any point of the timeline by pressing Command+Option and a number (e.g. 3 for 30%)
