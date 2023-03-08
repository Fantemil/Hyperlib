local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "waapp lagger/crasher by joshclark756#7155", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

getgenv().lag = false
getgenv().Crash = false

local Stepped = game.RunService.Stepped 

function fart()
Stepped:Connect(function()
        while getgenv().lag do
            task.wait()
            game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem",7957073869)
            wait(0)
            for i,v in  pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                if v:isA("Tool") then do
                    v.Parent = game.Players.LocalPlayer.Character
                    task.wait()
                v.Parent = game.Workspace 
                task.wait()
                game.Players.LocalPlayer.Character.RightHand.RightGrip:destroy()
            end
        end
    end
end
end)
end

function shit()
Stepped:Connect(function()
        while getgenv().Crash do
            task.wait()
            game:GetService("ReplicatedStorage").PlayerChannel:FireServer("GiveItem",7957073869)
            wait(0)
            for i,v in  pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                if v:isA("Tool") then do
                    v.Parent = game.Players.LocalPlayer.Character
                v.Parent = game.Workspace 
                game.Players.LocalPlayer.Character.RightHand.RightGrip:destroy()
            end
        end
    end
end
end)
end
 
local Tab = Window:MakeTab({
 Name = "lagger",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

Tab:AddToggle({
 Name = "lagger",
 Default = false,
 Callback = function(Value)
     getgenv().lag = Value
     fart()
 end    
})
Tab:AddToggle({
 Name = "Crasher",
 Default = false,
 Callback = function(Value)
     getgenv().Crash = Value
     shit()
 end    
})