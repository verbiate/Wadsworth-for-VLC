-- Jump to X% -- VLC Extension (VLC 2.x and 3.x)

--[[
INSTALLATION:
Put the .lua file in the VLC subdir /lua/extensions, by default:
* macOS (all users): /Applications/VLC.app/Contents/MacOS/share/lua/extensions/
* Windows (all users): %ProgramFiles%\VideoLAN\VLC\lua\extensions\
* Windows (current user): %APPDATA%\VLC\lua\extensions\
* Linux (all users): /usr/lib/vlc/lua/extensions/
* Linux (current user): ~/.local/share/vlc/lua/extensions/
(create directories if they don't exist)
Restart VLC.
USAGE:
On macOS, access the extension via the VLC menu's Extensions submenu. It's recommended to set up keyboard shortcuts via System Preferences. Other platforms can access it via the "View" menu.
--]]

--[[ Changelog:
v1.0 [03/10/2018]
Initial release.
--]]

--[[ Extension description ]]
function descriptor()
  return {
    title = "Jump to 90%" ;
    version = "1.0" ;
    author = "Hans van de Bruggen" ;
    shortdesc = "Jump to a percentage of the timeline, similar to YouTube";
    description = "<h1>Jump to 90%</h1> "
    .. "On YouTube, pressing 0-9 will jump you to a percentage of"
    .. "the timeline (e.g. pressing 6 will jump to 60% of the way through the video)."
    .. "<br>In an effort to recreate this functionality, this is one of a "
    .. "set of extensions that jumps to a specific percentage. You can use "
    .. "other tools (like System Preferences on macOS) to assign keyboard "
    .. "shortcuts to each extension and thereby replicate this functionality.";
  }
end

-- Trigger the jump
function activate() setTime() end

function setTime()
-- Specify the point in the timeline to jump to, as a percentage
  local percentageToJump = 90 / 100
-- Set the playhead to a given time
  local input=vlc.object.input()
  if input then vlc.var.set(input,"position",percentageToJump) end

-- Display jump percentage on screen (uncomment to enable)
  -- local osdPercentage = tostring(percentageToJump * 100) .. "%"
  -- vlc.osd.message(osdPercentage,1,"center")

-- Terminate the action (unnecessary?)
  -- vlc.deactivate()
end
