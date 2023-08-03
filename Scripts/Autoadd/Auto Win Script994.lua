local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Bridge Run Gui", "DarkTheme") 

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://5568992074"
local GUI = game:GetService("StarterGui")
local cframeplace = CFrame.new(1.39922476, 103.247887, -687.644775)
local cframeplace2 = CFrame.new(3.75636053, 107.672905, -444.378937)
local Hum = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
MainSection:NewToggle("Loop Win", "Loops Wins", function(state1)
    getgenv().autowin = true
    if state1 then
        autowin = true
        GUI:SetCore("SendNotification", {
            Title = "Bridge Run Gui",
            Text = "Loop Win enabled!",
            Duration = 10
        })
        sound:Play()
        while autowin and wait(1) do
            Hum.CFrame = cframeplace
        end
    else
        GUI:SetCore("SendNotification", {
            Title = "Bridge Run Gui",
            Text = "Loop Win Disabled!",
            Duration = 10
        })
        sound:Play()
        autowin = false
        wait(1)
        Hum.CFrame = cframeplace2
    end
end)
MainSection:NewButton("Fly - C to toggle", "Flies", function()
    GUI:SetCore("SendNotification", {
        Title = "Bridge Run Gui",
        Text = "Fly enabled!",
        Duration = 10
    })
    local sound = Instance.new("Sound", game.Workspace)
    sound.SoundId = "rbxassetid://5568992074"
    sound:Play()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/PepesGH1/stuff/main/Cframfly.lua'),true))()
end)
MainSection:NewButton("Inf Jump", "Infinite Jump forever", function()
    game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") 
end)