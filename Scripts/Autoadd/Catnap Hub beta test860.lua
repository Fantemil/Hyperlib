ocal Rayfield = loadstring(game:HttpGet('https://[Log in to view URL]'))()

local Window = Rayfield:CreateWindow({
   Name = "Catnap Hub",
   LoadingTitle = "loading...",
   LoadingSubtitle = "by Catnap",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "..."
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Catnap Hub",
      Subtitle = "Key System",
      Note = "Key is cat",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"cat"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("ðMainð", nil) -- Title, Image
local MainSection = MainTab:CreateSection("ð")

Rayfield:Notify({
   Title = "Catnap Hub",
   Content = "Sucessfully executed Hub!",
   Duration = 6.5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Lua script paster",
   Callback = function(--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local Decompile = loadstring(game:HttpGet("https://[Log in to view URL]")()

Decompile.setclipboard = true
Decompile.getupvalues = false
Decompile.getconstants = false
Decompile.antiloop = false
Decompile.new(Script Path) -- support for anything)
   -- The function that takes place when the button is pressed
   end,
})

  local Button = MainTab:CreateButton({
   Name = "Partnered Eclipse Hub",
   Callback = function(--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet('https://[Log in to view URL]'))())
   -- The function that takes place when the button is pressed
   end,
})  

local Button = MainTab:CreateButton({
   Name = "The Hunt Helper",
   Callback = function(--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://[Log in to view URL]"))()
)
   -- The function that takes place when the button is pressed
   end,
})

local Button = MainTab:CreateButton({
   Name = "Close UI (beta)",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})