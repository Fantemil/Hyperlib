-- Import AR-UtilsV2
local utils = loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/AR-UtilsV2/main/src/utils.lua"))()
-- Call our disable function
utils.DisableAC()
-- Let Boltshub execute after a second. (This is optional)
task.wait(1)
utils.ExecuteBH() -- This is my version of boltshub, it only works with the AC Disabler