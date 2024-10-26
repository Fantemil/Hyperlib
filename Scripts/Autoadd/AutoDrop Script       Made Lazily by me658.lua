local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

-- Window
local Window = OrionLib:MakeWindow({Name = "HeyHeyHey!!", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Values
function TempValue()
    while _G.TempValue == true do 
        local args = {
            [1] = _G.NumTempValue
        }

        game:GetService("ReplicatedStorage").Remotes.Drop:FireServer(unpack(args))
        wait(0.01) 
    end
end

-- Tabs
local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Adaptive Input
Tab:AddTextbox({
    Name = "Drops",
    Default = "1", 
    TextDisappear = true,
    Callback = function(Value)
        _G.NumTempValue = tonumber(Value)
        _G.TempValue = true 
        TempValue()
    end	  
})

OrionLib:Init()