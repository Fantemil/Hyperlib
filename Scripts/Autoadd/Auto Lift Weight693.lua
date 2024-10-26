local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Auto Lift", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local MainTab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local autoLiftEnabled = false

MainTab:AddToggle({
    Name = "Auto Lift",
    Default = false,
    Callback = function(Value)
        autoLiftEnabled = Value
        if autoLiftEnabled then
            spawn(function()
                while autoLiftEnabled do
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Lift"):FireServer()
                    wait(0.1) -- Adjust this delay as needed
                end
            end)
        end
    end    
})

OrionLib:Init()
