local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Speed city script", "DarkTheme")
local Tab1 = Window:NewTab("Teleports")
local Tab = Window:NewTab("Codes")
local Tab2 = Window:NewTab("Ghost city orbs (use ghost tails)")
local Section1 = Tab1:NewSection("teleport")
local Section = Tab:NewSection("all codes")
local Section2 = Tab2:NewSection("Orbs in ghost city")


Section2:NewToggle("Black Orbs", "Teleports You To The Black Orbs", function(state)
	if state then
		getgenv().Farming1 = true
		while Farming1 == true do
			if game:GetService("Workspace").GhostCity.GhostOrbsMega:FindFirstChild("GhostMega2") then 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").GhostCity.GhostOrbsMega.GhostMega2.Outside.Position)
			end
			wait()
		end
	else
		getgenv().Farming1 = false
	end
end)

Section2:NewToggle("White Orbs", "Teleports You To The White Orbs", function(state)
	if state then
		getgenv().Farming1 = true
		while Farming1 == true do
			if game:GetService("Workspace").GhostCity.GhostOrbsMega:FindFirstChild("GhostMega") then 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game:GetService("Workspace").GhostCity.GhostOrbsMega.GhostMega.Outside.Position)
			end
			wait()
		end
	else
		getgenv().Farming1 = false
	end
end)

Section1:NewButton("Original Map", "Teleports You!", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2388, 2742.4978, 390, 1, -2.66421161e-08, -1.13693065e-14, 2.66421161e-08, 1, 3.76773457e-08, 1.03655022e-14, -3.76773457e-08, 1)
end)


Section1:NewButton("Ghost City", "Teleports You!", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3825.7041, -33.801918, 7304.7002, 1, 4.6416046e-10, -4.94060366e-08, -4.64160321e-10, 1, 2.74975531e-09, 4.94060366e-08, -2.74975531e-09, 1)
end)

Section:NewButton("Redeem 3000speed", "Redeeems  This Code", function()
	local ohString1 = "3000speed"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem 3hours", "Redeeems  This Code", function()
	local ohString1 = "3hours"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem billion", "Redeeems  This Code", function()
	local ohString1 = "billion"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem christmas", "Redeeems  This Code", function()
	local ohString1 = "christmas"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem elitecity", "Redeeems  This Code", function()
	local ohString1 = "elitecity"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem quad_rillion", "Redeeems  This Code", function()
	local ohString1 = "quad_rillion"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem noobsquad", "Redeeems  This Code", function()
	local ohString1 = "noobsquad"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem oldgame", "Redeeems  This Code", function()
	local ohString1 = "oldgame"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem portal", "Redeeems  This Code", function()
	local ohString1 = "portal"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem simulatorgame", "Redeeems  This Code", function()
	local ohString1 = "simulatorgame"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem testing", "Redeeems  This Code", function()
	local ohString1 = "testing"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem tofuuturtle", "Redeeems  This Code", function()
	local ohString1 = "tofuuturtle"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)

Section:NewButton("Redeem trillion", "Redeeems  This Code", function()
	local ohString1 = "trillion"

	game:GetService("ReplicatedStorage").RedeemCode:FireServer(ohString1)
end)