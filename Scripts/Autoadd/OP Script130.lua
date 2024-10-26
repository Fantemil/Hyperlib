
local library = loadstring(game:HttpGet("https://raw.githubusercortent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local W = library:Window("Block Incremental")

W:Button("Infinite Stats", function()
	game:GetService("ReplicatedStorage").Events.Currency:FireServer(math.huge, "Blocks")
	game:GetService("ReplicatedStorage").Events.Currency:FireServer(math.huge, "Gems")
	game:GetService("ReplicatedStorage").Events.Currency:FireServer(math.huge, "PBlocks")
	game:GetService("ReplicatedStorage").Events.Currency:FireServer(math.huge, "Clicks")
end)

W:Toggle("Auto Level Up", false, function(bool)
    _G.level = bool
	while _G.level do
		for i = 0, 10 do
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Level")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Level")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Level")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Level")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Level")
		end
		wait()
	end
end)

W:Toggle("Auto Steel", false, function(bool)
	_G.steel = bool
	while _G.steel do
		for i = 0, 10 do 
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Steel")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Steel")
		end
		wait()
	end
end)

W:Toggle("Auto Crystalizes", false, function(bool)
	_G.crystalizes = bool
	while _G.crystalizes do
		for i = 0, 10 do 
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Crystalizes")
			game:GetService("ReplicatedStorage").Events.Currency:FireServer(1, "Crystalizes")
		end
		wait()
	end
end)