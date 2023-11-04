local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Good Or Bad Obby", "BloodTheme")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Stuff:")

Section:NewButton("Get Free Gears", "Gives Free Gears", function()
    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveGear"):FireServer()
end)


Section:NewButton("Goto End", "Tps you to the end of obby", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-838.241211, 152.285919, -648.894836, 0.643747509, -7.69693731e-09, -0.765237987, 4.06610468e-10, 1, -9.71617009e-09, 0.765237987, 5.9436065e-09, 0.643747509)
end)

_G.on = false

Section:NewToggle("Auto Gear FAST", "Auto Gets Gears", function(state)
    _G.on = state
    
    if state then
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveGear"):FireServer()
    else
        print("Gear Off")
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
    if _G.on then
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveGear"):FireServer()
    end
end)

Section:NewSlider("Speed", "Speed CHanger", 200, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)