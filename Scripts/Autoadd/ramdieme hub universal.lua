local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Ramdieme hub (universal)",
   LoadingTitle = "Loading Ramdieme hub",
   LoadingSubtitle = "by gtnocayt (on discord and yt)",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = true, -- Create a custom folder for your hub/game
      FileName = "Ramdieme hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "Ramdieme hub has been executed!",
   Content = "have fun with this gui",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = " n i c e !",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "GhostHub",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "CanHub",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/stuffman0001/CanHub/main/Code"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = " The chosen one gui",
   Callback = function()
   --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--Made by Kosovo#3784
loadstring(game:HttpGet(("https://raw.githubusercontent.com/iamnotadog12/chosen-one/main/daddy"), true))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Better roblox (BTR)",
   Callback = function()
   loadstring(game:HttpGet("https://eternityhub.xyz/BetterRoblox/Loader"))()

   end,
})

local Button = MainTab:CreateButton({
   Name = "goofy ah hub",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/yeerma/1/main/the_greatest_script_ever_made'))()
   end,
})

local MiscTab = Window:CreateTab("Misc", nil) -- Title, Image
local Section = MiscTab:CreateSection("social")
local Label = MiscTab:CreateLabel("https://discord.gg/5Phsjsjr5W")
local Label = MiscTab:CreateLabel("https://www.youtube.com/channel/UCCm4Yx0kOW5oVrdxGE3hcGQ")

local Section = MiscTab:CreateSection("Random")
local Label = MiscTab:CreateLabel("made by GTNOCAYT")
local Label = MiscTab:CreateLabel("roblox username is ughStopbeamingMe788")