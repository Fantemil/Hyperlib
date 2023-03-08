getgenv().sus_cmds={}
sus_cmds.ExtraPlugins={}
local fd=not isfolder("November")
if fd or not isfile("November\\char-manip.lua") then table.insert(sus_cmds.ExtraPlugins,'https://raw.githubusercontent.com/6yNuiC9/scr/main/newuserdplugins/char-manip.lua') end
if fd or not isfile("November\\icepoolshook.lua") then table.insert(sus_cmds.ExtraPlugins,'https://raw.githubusercontent.com/6yNuiC9/scr/main/newuserdplugins/icepoolshook.lua') end
fd=nil
loadstring(game:HttpGet("https://raw.githubusercontent.com/6yNuiC9/scr/main/hughjazz.lua"))()