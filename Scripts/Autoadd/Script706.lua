-- Game Name = [FREE ADMIN] [VOID] IQ Obby
-- Game Link = https://www.roblox.com/games/18122905280/FREE-ADMIN-VOID-IQ-Obby

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
    Name = "Iq Obby",
    LoadingTitle = "Game Script",
    LoadingSubtitle = "by omerbdr",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
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

 local MainTab = Window:CreateTab("Main", 4483362458) -- Title, Image,

 local MainSection = MainTab:CreateSection("Main")

 local Button = MainTab:CreateButton({
    Name = "Get all the Iq Tropies",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne["1k"].touchpart.CFrame -- 1k
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne["5k"].touchpart.CFrame -- 5k
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne["7k"].touchpart.CFrame -- 7k
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne.Trophy:GetChildren()[3].CFrame -- 2.5k
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne["10ktrophy"].touchpart.CFrame -- 10K
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne:GetChildren()[131].CFrame -- 830K
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne:GetChildren()[58].CFrame -- 2M
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne.touchpart.CFrame -- 1.2M
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.World2["45k"].touchpart.CFrame -- 45K
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.World2["35k"].touchpart.CFrame -- 35K
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.World2["15k"].touchpart.CFrame -- 15K 
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.World2["25k"].touchpart.CFrame -- 25K
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.World2["500k"].touchpart.CFrame -- 500K

    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Unlock New Area",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.WorldOne:GetChildren()[26].touchpart.CFrame -- New area
    end,
 })

 local Button = MainTab:CreateButton({
    Name = "Max Iq Admin",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:GetChildren()[29].Model.touchpart.CFrame -- Max Iq Admin
    end,
 })