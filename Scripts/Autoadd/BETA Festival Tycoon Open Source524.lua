local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("[BETA] Festival Tycoon", "DarkTheme")

local Tab = Window:NewTab("Money Stuff")

local Section = Tab:NewSection("Made By MeatBall Is God#0770")

Section:NewTextBox("Give YourSelf Money", "What Ever You Put You Will Get", function(txt)
game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(txt)
end)

Section:NewToggle("AutoCollect", "AutoCollects", function(state)
    if state then
    _G.AutoCollect = true
    while _G.AutoCollect do
    game:GetService("ReplicatedStorage").RemoteObjects.CollectedMoney:FireServer()
    wait(0.1)
    end

    else
        p_G.AutoCollect = false
    end
end)

local Tab = Window:NewTab("Get Free Items")

local Section = Tab:NewSection("Get Free Items")


Section:NewButton("Get Last 2 Items", "Free Shit", function()
    game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(11111111111111111111111111111111)
game:GetService("ReplicatedStorage").RemoteObjects.ClaimMainStageChallenge:FireServer()
end)

local Tab = Window:NewTab("LocalPlayer")

local Section = Tab:NewSection("Section Name")

Section:NewSlider("WalkSpeed", "ez", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
