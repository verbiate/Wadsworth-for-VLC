# Jump to N% (VLC Extension)

On YouTube, pressing 0-9 will jump you to a percentage of the timeline (e.g. pressing 6 will jump to 60% of the way through the video). In an effort to recreate this functionality, this is a set of extensions that jumps to a specific percentage. You can use other tools (like System Preferences on macOS) to assign keyboard shortcuts to each extension and thereby replicate this functionality. An AppleScript is also included to create these shortcuts for you on macOS.

INSTALLATION:
Put the .lua file in the VLC subdir /lua/extensions, by default:
* macOS (all users): /Applications/VLC.app/Contents/MacOS/share/lua/extensions/ (right click the VLC icon in your Applications folder and choose "Show Package Contents")
* Windows (all users): %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* Windows (current user): %APPDATA%\VLC\lua\extensions\
* Linux (all users): /usr/lib/vlc/lua/extensions/
* Linux (current user): ~/.local/share/vlc/lua/extensions/
(create directories if they don't exist)
Restart VLC.

USAGE:
On macOS, access the extension via the VLC menu's Extensions submenu. It's recommended to set up keyboard shortcuts via System Preferences. Other platforms can access it via the "View" menu.

NOTE:
This has been tested on VLC 2.x and VLC 3.x on macOS. It has not been tested on other platforms, but should work exactly the same.
