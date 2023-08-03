local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("TITLE", "DarkTheme")
local Tab = Window:NewTab("Autofarm")
local Section = Tab:NewSection("atfrm")


Section:NewToggle("Inf Coins", "ToggleInfo", function(state)
	if state then
		_G.loop = true
		while _G.loop == true do wait()
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local Modules = ReplicatedStorage:FindFirstChild("Modules")
			local Network = require(Modules.Network_Module)
			local CandyToSell = 50000000000

			function SellCandy()
				for index = 1, 100 do
					wait()
					Network:FireServer("SellCandy", CandyToSell)
				end
			end

			local success, result = pcall(function()
				return SellCandy()
			end)

			if (success) and (result) then
				return (result)
			end
			end
	else
		_G.loop = false
		while _G.loop == true do wait()
			print("Toggle Off")
			end
	end
end)



Section:NewToggle("Inf Rebirth Tokens", "ToggleInfo", function(state)
	if state then
		_G.loop = true
		while _G.loop == true do wait()
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local Modules = ReplicatedStorage:FindFirstChild("Modules")
			local Network = require(Modules.Network_Module)
			local CandyToSell = 50000000000

			function Rebirth()
				for index = 1, 100 do
					wait()
					Network:FireServer("Rebirth", CandyToSell)
				end
			end

			local success, result = pcall(function()
				return Rebirth()
			end)

			if (success) and (result) then
				return (result)
				end
		end
	else
		_G.loop = false
		while _G.loop == true do wait()
			print("Toggle Off")
		end
	end
end)