local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

_G.autospeed = true
_G.WinFarm = true
_G.autoreebirth = true

function autospeed()
    while _G.autospeed == true do
        game:GetService("ReplicatedStorage").CommonEvents.Clicking:FireServer()
        game:GetService("RunService").Heartbeat:wait();
    end
end

function autowin()
    while _G.WinFarm == true do
        game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace").Stages["25"].CFrame
        game:GetService("RunService").Heartbeat:wait();
    end
end

function autorebirth()
    while _G.autoreebirth == true do
        game:GetService("ReplicatedStorage").CommonEvents.Rebirth:FireServer()
        game:GetService("RunService").Heartbeat:wait();
    end
end

local Window = OrionLib:MakeWindow({Name = "Bang", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "Auto Stuff",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Auto Stuff"
})

OrionLib:MakeNotification({
 Name = "Loaded",
 Content = "l1eelands#5188",
 Image = "rbxassetid://4483345998",
 Time = 5
})

Tab:AddToggle({
 Name = "Auto Speed",
 Default = false,
 Callback = function(Value)
  _G.autospeed = Value
        autospeed()
 end    
})

Tab:AddToggle({
 Name = "Auto Complete",
 Default = false,
 Callback = function(Value)
  _G.WinFarm = Value
        autowin()
 end    
})

Tab:AddToggle({
 Name = "Auto Prestige",
 Default = false,
 Callback = function(Value)
  _G.autoreebirth = Value
        autorebirth()
 end    
})

OrionLib:Init()