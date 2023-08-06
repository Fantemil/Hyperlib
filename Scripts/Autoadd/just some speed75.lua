local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "MIMIC HUB",
   LoadingTitle = "MIMIC HUB",
   LoadingSubtitle = "by hecker",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Mimic Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "rnraRmEw", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "MIMC",
      Subtitle = "Key System",
      Note = "Join discord for the key! https://discord.gg/rnraRmEw",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Uhd452jmgO31"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Imagea

local Slider = Tab:CreateSlider({
    Name = "Walkspeed Changer",
    Range = {16, 999999},
    Increment = 1,
    Suffix = "km/h",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value    
    end,
})

local Tab = Window:CreateTab("Credits", 4483362458) -- Title, Image

local Paragraph = Tab:CreateParagraph({Title = "Maker", Content = "hecker aka owner"})

local Paragraph = Tab:CreateParagraph({Title = "Idea", Content = "adminus aka developer"})