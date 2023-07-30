--[[

  Chat commands (case insensitive):
  load <filename> --> Loads a saved macro
  save <name> --> Saves macro to workspace folder
 
--]]

local binds = { -- Only set these to keys that you know you won't use
   ToggleRecording = "F", -- Start/stop recording inputs
   PlayRecording = "G", -- Start/stop playing a macro
   ToggleLoop = "H" -- Enable/disable looping
}


if getgenv().binds then return end
getgenv().binds = binds

loadstring(game:HttpGet("https://gist.githubusercontent.com/Isaiah6857/deaa632b2ef9c789005ed825c8ab27ec/raw/"))()