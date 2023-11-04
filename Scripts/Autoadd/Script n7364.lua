local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Window = OrionLib:MakeWindow({Name = GameName, HidePremium = false, SaveConfig = true, ConfigFolder = "Orion Library"})
local Tab = Window:MakeTab({Name = "Main",Icon = "rbxassetid://4483345998",PremiumOnly = false})

Tab:AddButton({Name = "Spawn Lucky Block",Callback = function()
	game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
end})

Tab:AddButton({Name = "Spawn Super Block",Callback = function()
	game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
end})

Tab:AddButton({Name = "Spawn Diamond Block",Callback = function()
	game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
end})

Tab:AddButton({Name = "Spawn Rainbow Block",Callback = function()
	game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
end})

Tab:AddButton({Name = "Spawn Galaxy Block",Callback = function()
	game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
end})