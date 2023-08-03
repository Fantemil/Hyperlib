_G.Settings = {} -- Preparing the settings table.
_G.Settings.UseHookfunction = true -- Will detect any request functions supported by the executor, and hook them.
_G.Settings.UseHookMetamethod = false -- Will detect either the syn or http library, and hook it's __index metamethod to return a hooked request function.
_G.Settings.RemoveSecurity = true -- Will prevent and remove detections and anti hook methods used by Anti HTTP Spies.
_G.Settings.BlockUrls = true -- Will block requests to a premade list of malicious URLs.
_G.Settings.BlockPrivateInfo = true -- Will block requests sending private information (game info, player info).

--[[
Notice:
Don't use both UseHookfunction and UseHookMetamethod, it will cause duplicate frames in the GUI.
]]--

loadstring(game:HttpGet("https://raw.githubusercontent.com/Extorius/luaPro/main/HTTP%20Spy.lua"))() -- Loads the HTTP Spy