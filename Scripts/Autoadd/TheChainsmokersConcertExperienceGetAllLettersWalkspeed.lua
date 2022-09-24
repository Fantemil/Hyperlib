local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Chainsmokers Gui - by pepes ", "DarkTheme") 

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

local sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "rbxassetid://5568992074"
local GUI = game:GetService("StarterGui")

MainSection:NewButton("Get the VIP Pass UGC item!", "Gives you the VIP Pass UGC item", function()
    GUI:SetCore("SendNotification", {
        Title = "Chainsmokers Gui ",
        Text = "Started getting!",
        Duration = 10
    })
    sound:Play()
    for i,v in ipairs(game:GetService("Workspace").ScenesClient.Venue.ScavengerPoints:GetChildren()) do
        for l,c in ipairs(v:GetChildren()) do
            if c:IsA("BasePart") then
                local player = game.Players.LocalPlayer.Character.HumanoidRootPart
                player.CFrame = c.CFrame 
                wait(1)
            end
        end
    end
end)

MainSection:NewSlider("Walkspeed", "Changes your speed", 400, 16, function(s) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

MainSection:NewSlider("JumpPower", "Changes your speed", 400, 50, function(j) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = j
end)

MainSection:NewButton("Fly and NoClip - C to Toggle!", "Flies", function()
    GUI:SetCore("SendNotification", {
        Title = "Chainsmokers Gui ",
        Text = "Fly enabled!",
        Duration = 10
    })
    sound:Play()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/PepesGH1/stuff/main/Cframfly.lua'),true))()
end)