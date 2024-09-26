local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Lucky Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Lucky Block",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "Spawn Lucky Block",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("SpawnLuckyBlock"):FireServer()
    end      
})

Tab:AddButton({
    Name = "Spawn Rainbow Block",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("SpawnRainbowBlock"):FireServer()
    end
})

OrionLib:Init()