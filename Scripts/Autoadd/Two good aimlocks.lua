 local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "@ynwmelly scriptblox",
   LoadingTitle = "DaLocksV1 👀",
   LoadingSubtitle = "by j3do ✔",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "dalockhub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Dahood | Key",
      Subtitle = "Key System",
      Note = "https://pastebin.com/nDjWGZcA",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Qwertasdfghzxvbnjklm"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Main", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Aimlock")

Rayfield:Notify({
   Title = "Loading Script! (Maybe)",
   Content = "Follow my scriptblox!!",
   Duration = 5,
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
   Name = "Bxvlz Dot Lock",
   Callback = function()
        getgenv().Settings = {
    Key = "Q",
    Prediction = 0.12984,
    Airshot = true,
    Part = "LowerTorso",
    Radius = 120,
    AutoPrediction = true
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/bxvlz2/bxvlz/main/dot%20lock/main.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Bxvlz Lock Gui",
   Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/bxvlz2/bxvlz/main/lock2.lua"))()
   end,
})