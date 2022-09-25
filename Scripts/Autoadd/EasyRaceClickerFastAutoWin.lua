local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

--globals
_G.autospeed = true
_G.WinFarm = true
_G.autoreebirth = true

--functions

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

local Window = OrionLib:MakeWindow({Name = "Easy race Clicker Autofarm", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
 Name = "Autofarm",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

local Section = Tab:AddSection({
 Name = "Autofarm"
})

OrionLib:MakeNotification({
 Name = "Loaded",
 Content = "VVSCRIPT#8383",
 Image = "rbxassetid://4483345998",
 Time = 5
})

Tab:AddToggle({
 Name = "Autospeed",
 Default = false,
 Callback = function(Value)
  _G.autospeed = Value
        autospeed()
 end    
})

Tab:AddToggle({
 Name = "Auto Win",
 Default = false,
 Callback = function(Value)
  _G.WinFarm = Value
        autowin()
 end    
})

Tab:AddToggle({
 Name = "Auto Rebirth",
 Default = false,
 Callback = function(Value)
  _G.autoreebirth = Value
        autorebirth()
 end    
})

OrionLib:Init()