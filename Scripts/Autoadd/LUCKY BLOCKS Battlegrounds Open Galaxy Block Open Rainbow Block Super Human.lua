if game.PlaceId == 662417684 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "nihub", HidePremium = false, SaveConfig = true, ConfigFolder = "nihub"})


_G.autoTap = true   

function autoTap()
    while _G.autoTap == true do 
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        wait(.000000000000000000000000000000000000001)
    end
    end

local FarmTab = Window:MakeTab({
 Name = "AutoFarm",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})



FarmTab:AddToggle({
 Name = "Open rainbow Block",
 Default = false,
 Callback = function(Value)
  _G.autoTap = Value
        autoTap()
 end    
})

function autoTap()
    while _G.autoTap == true do 
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        wait(.000000000000000000000000000000000000001)
    end
    end

FarmTab:AddToggle({
 Name = "Open Galaxy Block",
 Default = false,
 Callback = function(Value)
  _G.autoTap = Value
        autoTap()
 end    
})

FarmTab:AddButton({
 Name = "open ??? block",
 Callback = function()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
   end    
})

local FarmTab = Window:MakeTab({
 Name = "Player",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

FarmTab:AddButton({
 Name = "Super Human",
 Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
   end    
})

FarmTab:AddButton({
 Name = "Reset Walkspeed JumpPower",
 Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
   end    
})

local FarmTab = Window:MakeTab({
 Name = "Misc",
 Icon = "rbxassetid://4483345998",
 PremiumOnly = false
})

    
FarmTab:AddButton({
 Name = "discord link",
 Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/ni7kobv/nihub/main/Discord%20Link%20e'))()
   end    
})


end
OrionLib.Init()