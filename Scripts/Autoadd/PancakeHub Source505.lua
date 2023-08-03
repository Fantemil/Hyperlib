

		if game.PlaceId == 155615604 then

			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Prison Life ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewDropdown("Give Gun", "Gives the player guns", {"M9", "Remington 870", "AK-47"}, function(v)
				local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
				local Event = game:GetService("Workspace").Remote.ItemHandler
				Event:InvokeServer(A_1)
			end)
			MainSection:NewDropdown("Extreme Crasher", "Makes the gun crash the server (op)", {"M9", "Remington 870", "AK-47", "Taser"}, function(v)
				local module = nil
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
				elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
				end
				if module ~= nil then
					module["MaxAmmo"] = math.huge
					module["CurrentAmmo"] = math.huge
					module["StoredAmmo"] = math.huge
					module["FireRate"] = 0.0000001
					module["Spread"] = 0
					module["Range"] = math.huge
					module["Bullets"] = 10
					module["ReloadTime"] = 0.0000001
					module["AutoFire"] = true
				end
				wait(5)
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Server Crashed By Pancake Hub", "All")
				game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("gg/uNUD8mzuAs", "All")
			end)
			MainSection:NewDropdown("Gun Mod", "Makes the gun Op ", {"M9", "Remington 870", "AK-47", "Taser"}, function(v)
				local module = nil
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
				elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
				end
				if module ~= nil then
					module["MaxAmmo"] = math.huge
					module["CurrentAmmo"] = math.huge
					module["StoredAmmo"] = math.huge
					module["FireRate"] = 0.01
					module["Spread"] = 0
					module["Range"] = math.huge
					module["Bullets"] = 6
					module["ReloadTime"] = 0.1
					module["AutoFire"] = true
				end
			end)

			-- PLAYER
			local Player = Window:NewTab("Player")
			local PlayerSection = Player:NewSection("Player")

			PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
			end)

			PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
			end)

			PlayerSection:NewButton("Become a guard", "makes you a guard", function()

				local yes = "Bright blue"

				workspace.Remote.TeamEvent:FireServer(yes)
			end)
			PlayerSection:NewButton("Become a inmate", "makes you a guard", function()

				local yes = "Bright orange"

				workspace.Remote.TeamEvent:FireServer(yes)
			end)
			MainSection:NewButton("Taser Lagger", "makes your Taser lag the game", function()
				v = 'Taser'
				local module = nil
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
				elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
					module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
				end
				if module ~= nil then
					module["MaxAmmo"] = math.huge
					module["CurrentAmmo"] = math.huge
					module["Spread"] = 0
					module["Range"] = math.huge
					module["Bullets"] = 20
					module["ReloadTime"] = 0.01
					module["AutoFire"] = true
				end
			end)

			local TP = Window:NewTab("Teleport")
			local TPSection = TP:NewSection("Teleports")
			-- scripts start here:
			TPSection:NewButton("Guard Armory", "teleports u in the armory room", function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(823,100,2262)
			end)
			TPSection:NewButton("Criminal Base", "teleports u in the criminal Base", function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975,109,2055)
			end)
		end
if game.PlaceId == 6018583364 then
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Pancake Hub - R2DA Classic", "Ocean")
            wait(0.5)
            -- MAIN
            local Main = Window:NewTab("Autofarming")
            local MainSection = Main:NewSection("Autofarm (alt required)")
            MainSection:NewTextBox("Autofarm with punches", "", function(txt)
                while true do
                    task.wait(0)
                    local ohBoolean1 = true
                    local ohString2 = "Punch"
                    game:GetService("ReplicatedStorage").Ability:FireServer(ohBoolean1, ohString2)
                    local ohString1 = "Punch"
                    local plrs = game:GetService("Players"):FindFirstChild(txt)
                        game:GetService("ReplicatedStorage").AbilityLateResponse:FireServer(ohString1, plrs)
                end
            end)
            MainSection:NewToggle("Auto ready", "", function(state)
                if state then
                    gecko = true
                    while gecko do
                        task.wait(1)
                        local ohBoolean1 = true
                        game:GetService("ReplicatedStorage").ReadyStatus:FireServer(ohBoolean1)
                    end
                    else
                        gecko = false
                end
            end)
            MainSection:NewButton("Use platform and loopgoto", "", function()
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            end)
end
		if game.PlaceId == 142823291 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Murder Mystery 2 ", "Ocean")
			wait(0.5)
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Make sherrif,murderer sparkle", "", function()
				local players = game:GetService("Players")
				for _, v in pairs(players:GetPlayers()) do
					if v.Character:FindFirstChild("Knife") or v.Backpack:FindFirstChild("Knife") then
						warn("Murderer - " .. v.Name)
						local sparkles = Instance.new("Sparkles")
						sparkles.Color = Color3.fromRGB(196, 40, 28)
						sparkles.Parent = v.Character.Head
					end
					if v.Character:FindFirstChild("Gun") or v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Revolver") or v.Backpack:FindFirstChild("Revolver") then
						warn("Sheriff - " .. v.Name)
						local sparkles = Instance.new("Sparkles")
						sparkles.Color = Color3.fromRGB(0, 125, 125)
						sparkles.Parent = v.Character.Head
					end
				end
			end)
			MainSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
			end)

			MainSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
			end)
			MainSection:NewButton("TP To Spawn", "teleports u to the spawn", function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117,138,13)
			end)
			MainSection:NewButton("Autofarm (cant be turned off)", "Farms you Levels", function()
				while true do
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117,138,13)
					wait(3)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-135,155,20)
					wait(3)
				end
			end)
			MainSection:NewButton("Anti Kick (Use with autofarmer)", "Credits to jdm.if", function()
				--ANTI-AFK SCRIPT--
				wait(0.5)local ba=Instance.new("ScreenGui")
				local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
				local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
				ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
				ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
				ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
				ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
				ca.TextSize=22;da.Parent=ca
				da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
				da.Size=UDim2.new(0,370,0,107)_b.Parent=da
				_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
				_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by jdm.if"
				_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
				ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
				ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
				ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
				game:service'Players'.LocalPlayer.Idled:connect(function()
					bb:CaptureController()bb:ClickButton2(Vector2.new())
					ab.Text="Roblox kick denied"wait(2)ab.Text="Status : Active"end)
			end)
		end

		if game.PlaceId == 8540346411 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Rebirth Champions X ", "Ocean")
			wait(0.5)
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("AutoClicker", "Clicks automatically for you!", function()
				while true do
					wait()
					game:GetService("ReplicatedStorage").Events.Click3:FireServer()
				end
			end)
						MainSection:NewButton("Huge Multiplier", "Gives you a huge multiplier", function()
				while true do
					wait(3)
local ohString1 = "Mars"

game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(ohString1)
end
						end)
MainSection:NewButton("Buy 2x Clicks Potion(1T)", "Buys a potion for you", function()

local ohString1 = "x2Clicks"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
end)
		MainSection:NewButton("Buy 2x Gems Potion(1Qd)", "Buys a potion for you", function()

local ohString1 = "x2Gems"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
		end)
				MainSection:NewButton("Buy Luck Potion(1Qn)", "Buys a potion for you", function()

local ohString1 = "x2Luck"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
				end)
				MainSection:NewButton("Buy 2x Rebirths Potion(1Sx)", "Buys a potion for you", function()

local ohString1 = "x2Rebirths"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
				end)
				MainSection:NewButton("Buy 2x Pet xp Potion(1Sp)", "Buys a potion for you", function()

local ohString1 = "x2PetXP"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
				end)
						MainSection:NewButton("Buy Hatch Speed Potion(1O)", "Buys a potion for you", function()

local ohString1 = "x2HatchSpeed"

game:GetService("ReplicatedStorage").Events.Potion:FireServer(ohString1)
			end)
					local RebirthSection = Main:NewSection("Rebirth")
						RebirthSection:NewButton("Auto Rebirth 1m", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 12

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
			end)
			RebirthSection:NewButton("Auto Rebirth 25m ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 13

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
			end)
			RebirthSection:NewButton("Auto Rebirth 100m ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 14

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
			end)
			RebirthSection:NewButton("Auto Rebirth 500m ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 15

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
			end)
						RebirthSection:NewButton("Auto Rebirth 1B ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 16

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
						end)
					RebirthSection:NewButton("Auto Rebirth 2.5B ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 17

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
					end)
							RebirthSection:NewButton("Auto Rebirth 10B ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 18

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
							end)
							RebirthSection:NewButton("Auto Rebirth 250B ", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 19

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
							end)
							RebirthSection:NewButton("Auto Rebirth 1T", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 20

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
							end)
									RebirthSection:NewButton("Auto Rebirth 10T", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 21

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
									end)
											RebirthSection:NewButton("Auto Rebirth 25T", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 22

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
											end)
													RebirthSection:NewButton("Auto Rebirth 100T", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 23

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
													end)
													RebirthSection:NewButton("Auto Rebirth 250T", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 24

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
													end)
															RebirthSection:NewButton("Auto Rebirth 1Qd", "Clicks rebirth automatically for you!", function()
				while true do
					wait()
					local ohNumber1 = 25

					game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(ohNumber1)
				end
			end)
			local MainSection = Main:NewSection("Eggs")
			MainSection:NewDropdown("Open A Egg", "Opens Eggs", {"Forest", "Beach", "Atlantis", "Desert", "Winter", "Volcano", "Moon", "Cyber", "Magic", "Heaven", "Nuclear", "Void", "Spooky", "Cave", "Steampunk", "Hell", "Space"}, function(v)
				local ohString1 = (v)
				local ohString2 = "Triple"

				game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(ohString1, ohString2)
			end)
			MainSection:NewDropdown("Auto Open Eggs (Cant Be Turned Off)", "Opens Eggs", {"Forest", "Beach", "Atlantis", "Desert", "Winter", "Volcano", "Moon", "Cyber", "Magic", "Heaven", "Nuclear", "Void", "Spooky", "Cave", "Steampunk", "Hell", "Space"}, function(v)
				while true do
					wait()
					local ohString1 = (v)
					local ohString2 = "Triple"

					game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(ohString1, ohString2)
				end
			end)
			MainSection:NewButton("Auto Craft All Pets", "Crafts your pets for u", function()
				while true do
					wait()
					local ohString1 = "CraftAll"
					local ohTable2 = {}
					game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(ohString1, ohTable2)
				end
			end)
			MainSection:NewButton("Auto Collect All Chests", "Crafts your pets for u", function()
				-- This script was generated by Hydroxide's RemoteSpy: https://github.com/Upbolt/Hydroxide

				local ohString1 = "Spawn"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
				local ohString1 = "Beach"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
				local ohString1 = "Winter"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
				local ohString1 = "Cyber"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
				local ohString1 = "Nuclear"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
				local ohString1 = "Hell"

				game:GetService("ReplicatedStorage").Events.Chest:FireServer(ohString1)
				wait(1)
			end)
		end
		if game.PlaceId == 662417684 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Lucky Block Battlegrounds ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Lucky Block", "Gives you a galaxy block",function()
				game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()    
			end)
			MainSection:NewButton("Super Block", "Gives you a Super block",function()
				game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()    
			end)
			MainSection:NewButton("Diamond Block", "Gives you a Diamond block",function()
				game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()    
			end)
			MainSection:NewButton("Rainbow Block", "Gives you a Rainbow block",function()
				game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()    
			end)
			MainSection:NewButton("Galaxy Block", "Gives you a galaxy block",function()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()    
			end)
			MainSection:NewButton("Get all Items", "Gives you all Items", function()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
				game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
			end)
			local PlayerTab = Window:NewTab("Player")
			local PlayerTabSection = PlayerTab:NewSection("Player")
			PlayerTabSection:NewSlider("WalkSpeed", "Changes your ws", 250, 50, function(v) 
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (v)
			end)
			PlayerTabSection:NewSlider("JumpPower", "Changes your jp", 300, 50, function(v)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = (v)
			end)
			PlayerTabSection:NewButton("Teleport to middle of map", "Teleports you to middle", function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1041.44775, 194.447006, 89.3163834)
			end)
		end
		if game.PlaceId == 9203864304 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Raise A Floppa ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("AutoClicker", "Auto clicks floppa for money",function()
				while true do
					wait()
					fireclickdetector(game:GetService("Workspace").Floppa.ClickDetector)
				end
			end)
			MainSection:NewButton("Auto Pet Floppa", "Auto pets floppa for happiness",function()
				while true do
					wait()
					fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
					wait(6)
					fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
					wait(6)
					fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
					wait(6)
					fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
					wait(6)
					fireproximityprompt(game:GetService("Workspace").Floppa.HumanoidRootPart.PetPrompt)
					wait(60)
				end
			end)
		end
		if game.PlaceId == 9340342288 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Raise A Kotek", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("AutoClicker", "Auto clicks kotek for money", function()
				while true do
					wait()
					fireclickdetector(game:GetService("Workspace").kotek.Head.Clicker.ClickDetector, 0)
				end
			end)
		end
				if game.PlaceId == 9488143445 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Raise A Bloppa ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("AutoClicker", "Auto clicks bloppa for money",function()
while true do
    wait()
fireclickdetector(game:GetService("Workspace").Bloppa.ClickBox.KD)
end
			end)
			MainSection:NewButton("Auto Shower Bloppa", "Auto showers bloppa for cleanliness",function()
				while true do
				    wait()
				    print("starting")
fireproximityprompt(game:GetService("Workspace").House.Bath.Bath.Interact)
wait(30)
print("doing")
				end
			end)
		end
				if game.PlaceId == 9438506890 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Raise A Sogga ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("AutoClicker", "Auto clicks Sogga for money",function()
while true do
    wait()
fireclickdetector(game:GetService("Workspace").Sogga.hitbox.ClickDetector)
end
end)
end

				if game.PlaceId == 537413528 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Build A Boat For Treasure ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Auto Win", "Auto wins for money",function()
while true do
    wait()
local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(-50.6177, 119.054, 1155.97)})
    tween:Play()
    wait(1.5)
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(6), {CFrame = CFrame.new(-60.8253, 33.6595, 8519.89)})
tween:Play()
wait(7)
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(4), {CFrame = CFrame.new(-55.7065125, -358.739624, 9492.35645)})
tween:Play()
wait(23)
end
end)
end


				if game.PlaceId == 2248408710 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Destruction Simulator ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Auto Sell", "Auto sells for money",function()
			    while true do wait()
			    game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
			end
			end)
    			MainSection:NewButton("Inf Cash", "Inf Cash",function()
			    while true do wait()
local ohString1 = "Coins"
local ohNumber2 = 480
local ohNumber3 = 9000000

game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer(ohString1, ohNumber2, ohNumber3)
			end
    			end)
		    			MainSection:NewButton("Inf Level", "Inf Level",function()
while true do wait()
    local ohString1 = "Levels"
local ohNumber2 = 300
local ohNumber3 = 10

game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer(ohString1, ohNumber2, ohNumber3)
end
		    			end)
			MainSection:NewButton("Tp 20 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(50,4,138) -- 20
			end)
						MainSection:NewButton("Tp 25 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115,4,151) -- 25
						end)
								MainSection:NewButton("Tp 30 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(34,4,425) -- 30
								end)
										MainSection:NewButton("Tp 35 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111,4,437) -- 35
										end)
										MainSection:NewButton("Tp 40 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48,4,742) -- 40
										end)
										MainSection:NewButton("Tp 45 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-88,4,748) -- 30
										end)
												MainSection:NewButton("Tp 50 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(15,4,1042) -- 30
												end)
														MainSection:NewButton("Tp 55 Area", "tps u",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-74,4,1051) -- 30
			end)
				end
								if game.PlaceId == 9281034297 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Goal Kick Simulator ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
    			MainSection:NewToggle("Auto Kick Ball", "", function(state)
    if state then
    			    getgenv_yes = true
    			    while getgenv_yes == true do 
    			        wait()
local ohString1 = "Throw"
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohNumber2)
end
    else
            			    getgenv_yes = false
    			    while getgenv_yes == true do 
    			        wait()
local ohString1 = "Throw"
local ohNumber2 = 1

game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohNumber2)
    			    end
end
end)
MainSection:NewSlider("walkspeed", "changes your walkspeed", 300, 40, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
end
				if game.PlaceId == 3101667897 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Legends Of Speed ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Auto Steps", "Auto steps",function()
while true do wait()

local ohString1 = "collectOrb"
local ohString2 = "Red Orb"
local ohString3 = "City"

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(ohString1, ohString2, ohString3)
end
while true do wait()

local ohString1 = "collectOrb"
local ohString2 = "Red Orb"
local ohString3 = "City"

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(ohString1, ohString2, ohString3)
end
			end)
						MainSection:NewButton("Auto Gem", "Auto collects gems",function()
while true do wait()

local ohString1 = "collectOrb"
local ohString2 = "Gem"
local ohString3 = "City"

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(ohString1, ohString2, ohString3)
end
while true do wait()

local ohString1 = "collectOrb"
local ohString2 = "Gem"
local ohString3 = "City"

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(ohString1, ohString2, ohString3)
end
			end)
				end
								if game.PlaceId == 5130287078 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - R2DA (CEO edition)", "Ocean")
			wait(0.5)
			local Players = game:GetService("Players")
local BlacklistedPlayers = {
    "Ailbric",
    "SilenceIsMyGame",
    "jerryiesm",
    "clash522",
    "phalastinie",
    "PlaceRebuilder",
    "haterize",
    "786r786",
    "VioletHeartbreak",
    "Minininho02",
    "Nekoparaiten",
    "evilmedi",
    "arukion_father",
    "s_ebmaster",
    "EricisFreaker",
    "Robustloris",
    "Tim81705",
    "OXIFOVOS",
    "GreedsterTheMemester",
    "dancro",
    "AzuriteVoid",
    "ggsiIver",
    "Stxone",
    "StrawberryCantSpeak",
    "Yazaxen"
}

for _, v in pairs(Players:GetPlayers()) do 
    if table.find(BlacklistedPlayers, v.Name) then 
        Players.LocalPlayer:Kick("An R2DA mod was in your server.")
    end
end

Players.PlayerAdded:Connect(function(v)
    if table.find(BlacklistedPlayers, v.Name) then 
        Players.LocalPlayer:Kick("An R2DA mod joined.")
    end
end)
print("mod fucker loaded, enjoy")
			local Main = Window:NewTab("Survivor")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Buy ammo", "", function()
			    local ohString1 = "Ammo"
			    game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1)
			end)
			MainSection:NewButton("Buy Truck", "", function()
			    local ohString1 = "M939"
			    game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1)
			end)
		    MainSection:NewButton("Buy van", "", function()
		        local ohString1 = "Van"
		        game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1)
		    end)
	        MainSection:NewButton("Buy pills", "", function()
	            local ohString1 = "Buy"
	            local ohString2 = "Pills"
	            game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
	        end)
	        MainSection:NewButton("Buy grenade", "", function()
	            local ohString1 = "Buy"
	            local ohString2 = "Grenade"
	            game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
	        end)
	        MainSection:NewButton("Buy flashbang", "", function()
	            local ohString1 = "Buy"
	            local ohString2 = "Flash"
	            game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
	        end)
	        MainSection:NewButton("buy molotov", "", function()
	            local ohString1 = "Buy"
	            local ohString2 = "Molotov"
	            game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
	        end)
            MainSection:NewButton("Buy fire extinguisher", "", function()
                local ohString1 = "Buy"
                local ohString2 = "Fire Ext."
                game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Buy jerrycan", "", function()
                local ohString1 = "Buy"
                local ohString2 = "Jerrycan"
                game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Buy propane", "", function()
                local ohString1 = "Buy"
                local ohString2 = "Propane"
                game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Buy tomahawk", "", function()
                local ohString1 = "Buy"
                local ohString2 = "Tomahawk"
                game:GetService("ReplicatedStorage").RemoteEvents.SurvivorPower:FireServer(ohString1, ohString2)
            end)
            
			local Main = Window:NewTab("Zombie")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Respawn (random zombies)", "", function()
			    game:GetService("ReplicatedStorage").RemoteEvents.Respawn:FireServer()
			end)
			local MainSection = Main:NewSection("Bannable")
			MainSection:NewToggle("Leaper insta kill", "ToggleInfo", function(state)
			    if state then
			        silence = true
			        while silence do
			            task.wait(0)
			            game:GetService("ReplicatedStorage").RemoteEvents.LeaperRip:FireServer()
			        end
			    else
			        silence = false
			    end
			end)
			MainSection:NewTextBox("Stalker grab", "", function(txt)
			    local ohString1 = "pickup"
			    local ohInstance2 = game:GetService("Players"):FindFirstChild(txt)
			    local ohBoolean3 = true
			    game:GetService("ReplicatedStorage").RemoteFunctions.Stalkerf:InvokeServer(ohString1, ohInstance2, ohBoolean3)
			end)
			MainSection:NewToggle("Stalker force field", "ToggleInfo", function(state)
			    if state then
			        booandcats = true
			        while booandcats do
			            task.wait(0)
			            local ohString1 = "FF"
			            local ohBoolean2 = true
			            game:GetService("ReplicatedStorage").RemoteEvents.Stalker:FireServer(ohString1, ohBoolean2)
			        end
		            else
		                booandcats = false
			    end
			end)
		    local MainSection = Main:NewSection("Not Bannable")
		    MainSection:NewKeybind("Ticker insta explode", "", Enum.KeyCode.F, function()
		        local ohString1 = "TickerDeath"
		        game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
		    end)
	        MainSection:NewToggle("Stalker invisibility", "ToggleInfo", function(state)
	            if state then
	                ismygame = true
	                while ismygame do
	                    task.wait(0)
	                    local ohString1 = "hide"
	                    local ohBoolean2 = true
	                    game:GetService("ReplicatedStorage").RemoteEvents.Stalker:FireServer(ohString1, ohBoolean2)
	                end
	                else
	                    ismygame = false
	            end
	        end)
            local MainSection = Main:NewSection("Buy zombies")
			MainSection:NewButton("Buy ticker", "", function()
			    local ohString1 = "Ticker"
			    game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
			end)
		    MainSection:NewButton("Buy edgar", "", function()
		        local ohString1 = "Edgar"
		        game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
		    end)
	        MainSection:NewButton("Buy brute", "", function()
	            local ohString1 = "Brute"
	            game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
	        end)
	        MainSection:NewButton("Buy leaper", "", function()
	            local ohString1 = "Leaper"
	            game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
	        end)
            MainSection:NewButton("Buy elm", "", function()
                local ohString1 = "Elemental"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
            end)
            MainSection:NewButton("Buy digger", "", function()
                local ohString1 = "Digger"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
            end)
            MainSection:NewButton("Buy stalker", "", function()
                local ohString1 = "Stalker"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
            end)
            MainSection:NewButton("Buy swarmer", "", function()
                local ohString1 = "Swarmer"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombiePower:FireServer(ohString1)
            end)
            local Main = Window:NewTab("Teleports")
			local MainSection = Main:NewSection("Casino Halls")
			MainSection:NewButton("Unlock first room", "", function()
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46, 3, 50)
			end)
			MainSection:NewButton("Unlock second room", "", function()
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138, 3, 50)
			    task.wait(.3)
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14, -1, 10)
			end)
			MainSection:NewButton("Unlock third room", "", function()
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186, 3, -14)
			end)
			MainSection:NewButton("Unlock Dicelord", "", function()
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-441, 15, -28)
			    task.wait(.3)
			    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-430, 23, -114)
			end)
		    MainSection:NewButton("Unlock chest vault", "", function()
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346, 3, -210)
		        task.wait(.3)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-384, 3, 146)
		        task.wait(.3)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 3, 46)
		    end)
		    MainSection:NewButton("Open all chests", "", function()
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360, 2, 50)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 2, 46)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 3, 42)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 2, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 2, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 2, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-330, 2, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 3, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314, 2, 35)
		        task.wait(5.5)
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-302, 3, 35)
		    end)
		    local MainSection = Main:NewSection("King Cherrycake's Quest")
		    MainSection:NewButton("Grab key", "", function()
		        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-401, 373, -79)
		    end)
	        MainSection:NewButton("Goto puzzle", "", function()
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-677, 384, -78)
	        end)
	        local MainSection = Main:NewSection("Chronos Quest")
	        MainSection:NewButton("Unlock elevator", "", function()
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32, 6, -140)
	        end)
	        MainSection:NewButton("Goto courtroom", "", function()
	            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18, 811, -220)
	        end)
            local Main = Window:NewTab("Development")
            local MainSection = Main:NewSection("Edgar")
            MainSection:NewButton("Health", "", function()
                local ohString1 = "Edgar"
                local ohString2 = "Health"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Damage", "", function()
                local ohString1 = "Edgar"
                local ohString2 = "Damage"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Stamina", "", function()
                local ohString1 = "Edgar"
                local ohString2 = "Stamina"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Range", "", function()
                local ohString1 = "Edgar"
                local ohString2 = "Range"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Tongue", "", function()
                local ohString1 = "Edgar"
                local ohString2 = "Tongue"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            local MainSection = Main:NewSection("Ticker")
            MainSection:NewButton("Health", "", function()
                local ohString1 = "Ticker"
                local ohString2 = "Health"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Damage", "", function()
                local ohString1 = "Ticker"
                local ohString2 = "Damage"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Timer", "", function()
                local ohString1 = "Ticker"
                local ohString2 = "Timer"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            local MainSection = Main:NewSection("Leaper")
            MainSection:NewButton("Health", "", function()
                local ohString1 = "Leaper"
                local ohString2 = "Health"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Damage", "", function()
                local ohString1 = "Leaper"
                local ohString2 = "Damage"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Stamina", "", function()
                local ohString1 = "Leaper"
                local ohString2 = "Stamina"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("C4", "", function()
                local ohString1 = "Leaper"
                local ohString2 = "C4"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Flight", "", function()
                local ohString1 = "Leaper"
                local ohString2 = "Flight"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            local MainSection = Main:NewSection("Digger")
            MainSection:NewButton("Health", "", function()
                local ohString1 = "Digger"
                local ohString2 = "Health"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Damage", "", function()
                local ohString1 = "Digger"
                local ohString2 = "Damage"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Speed", "", function()
                local ohString1 = "Digger"
                local ohString2 = "Speed"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Stamina", "", function()
                local ohString1 = "Digger"
                local ohString2 = "Stamina"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Pickaxe (6 stars)", "", function()
                local ohString1 = "Digger"
                local ohString2 = "Pickaxe"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            local MainSection = Main:NewSection("Brute")
            MainSection:NewButton("Health", "", function()
                local ohString1 = "Brute"
                local ohString2 = "Health"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Damage", "", function()
                local ohString1 = "Brute"
                local ohString2 = "Damage"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Stamina", "", function()
                local ohString1 = "Brute"
                local ohString2 = "Stamina"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            MainSection:NewButton("Club speed", "", function()
                local ohString1 = "Brute"
                local ohString2 = "ClubSpeed"
                game:GetService("ReplicatedStorage").RemoteEvents.ZombieStats:FireServer(ohString1, ohString2)
            end)
            local Main = Window:NewTab("Fun")
            local MainSection = Main:NewSection("Faces")
            MainSection:NewButton("Dead", "", function()
                local ohString1 = "x_x"
                game:GetService("ReplicatedStorage").RemoteEvents.SetFace:FireServer(ohString1)
            end)
            MainSection:NewButton("Panic", "", function()
                local ohString1 = "panic"
                game:GetService("ReplicatedStorage").RemoteEvents.SetFace:FireServer(ohString1)
            end)
            MainSection:NewButton("No face", "", function()
                local ohString1 = "struggle"
                game:GetService("ReplicatedStorage").RemoteEvents.SetFace:FireServer(ohString1)
            end)
            MainSection:NewButton("Smile", "", function()
                game:GetService("ReplicatedStorage").RemoteEvents.SetFace:FireServer()
            end)
            local MainSection = Main:NewSection("Back gear")
            MainSection:NewButton("Remove defibss, medkit, jetpack, etc (visual)", "", function()
                local ohString1 = "None"
                game:GetService("ReplicatedStorage").RemoteEvents.SetBackpack:FireServer(ohString1)
            end)
            local MainSection = Main:NewSection("Annoying")
            MainSection:NewToggle("Shake screen", "ToggleInfo", function(state)
                if state then
                    boo = true
                    while boo do
                        task.wait(0)
                        game:GetService("Players").LocalPlayer.ExplosionFX:Fire()
                    end
                    else
                        boo = false
                end
            end)
            local Main = Window:NewTab("Farming")
            local MainSection = Main:NewSection("Ticket farming")
            MainSection:NewButton("Auto farm", "", function()
                task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46, 3, 46) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46, 3, 50) --key
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54, 3, -38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-66, 3, -26) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-78, 3, -38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-82, 3, -14) -- ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-86, 3, -14) -- ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110, 3, -34) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-110, 3, -30) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109, 2, -26) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-86, 2, 53) --chest
task.wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14, -1, 10) --safety
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-138, 3, 50) --key
task.wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(14, -1, 10) --safety
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186, 3, -14)
task.wait(.3)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186, 3, -17) -- chest
task.wait(5.5)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-414, 3, -28) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-422, 3, -29) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346, 3, -210) --vault key 1
task.wait(.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-384, 3, 146) -- vault key 2
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382, 2, 150) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-470, 2, 149) --ticket
task.wait(5.5)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-378, 3, 106) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374, 3, 106) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374, 3, 110) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-374, 3, 114) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-378, 3, 110) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-378, 3, 114) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382, 3, 110) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-370, 3, 110) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 3, 42) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 3, 38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 3, 38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 3, 42) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-334, 3, 46) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 3, 46) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342, 3, 46) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 3, 50) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342, 3, 50) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346, 3, 50) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-342, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-358, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-362, 3, 54) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-346, 3, 58) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 3, 58) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 3, 58) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-358, 3, 58) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-362, 3, 58) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 3, 42) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314, 3, 42) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314, 3, 38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.Humanoid.Jump = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 3, 38) --ticket
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-360, 2, 50) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 2, 46) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-361, 3, 42) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-354, 2, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-350, 2, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338, 2, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-330, 2, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-318, 3, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-314, 2, 35) --chest
task.wait(5.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-302, 3, 35) --chest
task.wait(1)
local ohNumber1 = 10000
end)
game:GetService("ReplicatedStorage").RemoteEvents.SelfDamage:FireServer(ohNumber1)
            MainSection:NewToggle("Auto vote Casino Halls", "ToggleInfo", function(state)
                if state then
                    developemntsucks = true
                    while developemntsucks do
                        task.wait(1)
                        local ohString1 = "CasinoHalls"
                        local ohString2 = "QUEST"
                        local ohString3 = "None"
                        game:GetService("ReplicatedStorage").RemoteEvents.VoteMap:FireServer(ohString1, ohString2, ohString3)
                        local ohNumber1 = 1
                        game:GetService("ReplicatedStorage").RemoteEvents.Vote:FireServer(ohNumber1)
                    end
                    else
                        developemntsucks = false
                end
            end)
            MainSection:NewToggle("Auto ready (alt)", "ToggleInfo", function(state)
                if state then
                    autoready = true
                    while autoready do
                        task.wait(1)
                        local ohBoolean1 = true
                        game:GetService("ReplicatedStorage").RemoteEvents.SetReady:FireServer(ohBoolean1)
                    end
                    else
                        autoready = false
                end
            end)
            MainSection:NewToggle("Auto die (alt)", "ToggleInfo", function(state)
                if state then
                autodie = true
                while autodie do
                    task.wait(1)
                    local ohNumber1 = 10000
                    game:GetService("ReplicatedStorage").RemoteEvents.SelfDamage:FireServer(ohNumber1)
                end
                else autodie = false
                end
            end)
			local MainSection = Main:NewSection("Alt farming")
			MainSection:NewButton("Zombie anti afk (read description)", "use this on alts when alt farming (DM CEO for help)", function()
			    local mt = getrawmetatable(game)
			    setreadonly(mt, false)
			    local namecall = mt.__namecall
			    
			    mt.__namecall = function(self, ...)
			        local args = {...}
			        local method = getnamecallmethod()
			        if tostring(self) == "SetValue" and tostring(method) == "FireServer" then
			            if args[1] == "Idle" then
			                args[2] = false
			                return self.FireServer(self,unpack(args))
			            end
			        end
	                return namecall(self, ...)
			    end
			end)
        end
				if game.PlaceId == 5087077830 then
				    
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Prison Life V2", "Ocean")
			wait(0.5)
			local Main = Window:NewTab("Guns")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Give M9", "", function()
			    fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].giver.M9.ClickDetector)
			end)
			MainSection:NewButton("Give Shotgun", "", function()
			    fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ClickDetector)
			end)
			MainSection:NewButton("Give AK47", "", function()
			    fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ClickDetector)
			end)
			MainSection:NewButton("Give M4A1", "", function()
			    fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].giver.M4A1.ClickDetector)
			end)
			local Main = Window:NewTab("Melees")
			local MainSection = Main:NewSection("Main")
			MainSection:NewButton("Give Hammer", "", function()
			    fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ClickDetector)
			end)
		    MainSection:NewButton("Give Knife", "", function()
		        fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ClickDetector)
		    end)
		    local Main = Window:NewTab("Teams")
		    local MainSection = Main:NewSection("Main")
		    MainSection:NewButton("Guards", "", function()
		        local ohString1 = "Bright blue"
		        game:GetService("ReplicatedStorage").changeteam:FireServer(ohString1)
		        end)
		         MainSection:NewButton("Inmates", "", function()
		        local ohString1 = "Bright orange"
		        game:GetService("ReplicatedStorage").changeteam:FireServer(ohString1)
		         end)
		         MainSection:NewButton("Criminals", "", function()
		        local ohString1 = "Really red"
		        game:GetService("ReplicatedStorage").changeteam:FireServer(ohString1)
		        end)
		         MainSection:NewButton("Neutral", "", function()
		        local ohString1 = "Medium stone grey"
		        game:GetService("ReplicatedStorage").changeteam:FireServer(ohString1)
		         end)
	        local Main = Window:NewTab("Others")
	        local MainSection = Main:NewSection("Main")
	        MainSection:NewButton("Open front gate", "", function()
	            fireclickdetector(game:GetService("Workspace")["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"].ClickDetector)
	        end)
            MainSection:NewButton("Arrest all (seal is cool)", "", function()
                while task.wait(0) do
                    local plrs = game:GetService("Players"):GetChildren()
                    for i,v in pairs(plrs) do
                        local ohInstance1 = v
                        
                        game:GetService("ReplicatedStorage").Arrest:InvokeServer(ohInstance1)
                    end
                end
            end)
            MainSection:NewButton("Pickup keycards (seal is da best)", "", function()
                while true do
                    task.wait(1)
                    local a = game:GetService("Workspace"):FindFirstChild("keys")
                    if a then
                        local b = a:FindFirstChild("keycard")
                        if b then
                            fireclickdetector(b:FindFirstChild("ClickDetector"))
                        end
                    end
                end
            end)
				end
					            if game.PlaceId == 402122991 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Redwood Prison ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
            MainSection:NewButton("Escape", "", function()
                local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(-602.25293, -24.7896271, -349.926788)})
    tween:Play()
end)
				            MainSection:NewButton("Go to Key card", "", function()
        local TS = game:GetService("TweenService")
    local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(-424.021, -23.9987, -518.375)})
    tween:Play()
				end)
end
	if game.PlaceId == 9772878203 then
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Pancake Hub - Raise A Floppa 2", "Ocean")
            wait(0.5)
            -- MAIN
            local Main = Window:NewTab("Auto")
            local MainSection = Main:NewSection("Cash")
MainSection:NewToggle("Auto pickup(Credits To Seal)", "", function(state)
                if state then
                    penis_yes = true
                    while penis_yes == true do
                        wait(0)
                            local finda = game.Workspace:FindFirstChild("Money")
                            if finda then
                                finda.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                            end
                    end
                            else
                                penis_yes = false
                end
end)
MainSection:NewToggle("Auto click", "", function(state)
    if state then
        seals_gay = true
        while seals_gay == true do
            wait(0)
            fireclickdetector(game:GetService("Workspace").Floppa.ClickDetector)
        end
        else
            seals_gay = false
    end
    end)
			
	end
	if game.PlaceId == 947714452 then
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Pancake Hub - Bakers Valley", "Ocean")
            wait(0.5)
            -- MAIN
            local Main = Window:NewTab("Money")
            local MainSection = Main:NewSection("Cash")
            MainSection:NewButton("Infinite cash (bake 1 cake to update stats)", "", function()
                game.Workspace.resources.RemoteFunction:InvokeServer("attemptPurchaseFurniture", "23", -10000)
            end)
end
if game.PlaceId == 4620170611 then
            local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
            local Window = Library.CreateLib("Pancake Hub - Break In Story", "Ocean")
            wait(0.5)
            -- MAIN
            local Main = Window:NewTab("Health")
            local MainSection = Main:NewSection("Main")
            MainSection:NewButton("Get A Cure", "",function()
                local ohString1 = "Cure"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
            MainSection:NewButton("Get A Bloxy Cola", "",function()
                local ohString1 = "BloxyCola"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
            MainSection:NewButton("Get A Teddy Bear", "",function()
                local ohString1 = "TeddyBloxpin"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
            MainSection:NewButton("Get Chips", "",function()
                local ohString1 = "Chips"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
            MainSection:NewButton("Get A Medkit", "",function()
                local ohString1 = "MedKit"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
            MainSection:NewButton("Get A Bat", "",function()
                local ohString1 = "Bat"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
                        MainSection:NewButton("Get A Pizza", "",function()
                local ohString1 = "Pizza1"
                game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(ohString1)
            end)
end
if game.PlaceId == 292439477 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Phantom Forces", "Ocean")
			wait(0.5)
			local Main = Window:NewTab("Aimbot scripts")
			local MainSection = Main:NewSection("Scripts")
			MainSection:NewButton("Load Unfair Hub", "", function()
			    loadstring(game:HttpGet(('https://raw.githubusercontent.com/rblxscriptsnet/unfair/main/rblxhub.lua'),true))()
			end)
			MainSection:NewButton("Load Strawhook", "", function()
			    loadstring(game:HttpGet("https://raw.githubusercontent.com/VoidMasterX/strawhook/main/script.lua", true))()
			end)
			MainSection:NewButton("Load 22 Hub", "", function()
			    loadstring(game:HttpGet("https://pancak3-hub.xyz/pf-aimbot-script-1.html", true))()
			end)
			MainSection:NewButton("Load shawnjbragdon", "", function()
			    loadstring(game:HttpGet("https://pancak3-hub.xyz/pf-aimbot-script-3.html", true))()
			    end)
		    local Main = Window:NewTab("ESP scripts")
		    local MainSection = Main:NewSection("Scripts")
		    MainSection:NewButton("Load Zekgt's ESP", "", function()
		        loadstring(game:HttpGet("https://pancak3-hub.xyz/pf-esp-script-1.html"))()
		    end)
		    MainSection:NewButton("Load Unnamed ESP", "", function()
		      loadstring(game:HttpGet("https://pancak3-hub.xyz/pf-esp-script-2.html"))()
		    end)
		    local Main = Window:NewTab("Others")
		    local MainSection = Main:NewSection("Scripts")
		    MainSection:NewButton("Break all windows (credit xPremiums7)", "", function()
		        loadstring(game:HttpGet("https://pancak3-hub.xyz/pf-breakwindows.html", true))()
		    end)
	        MainSection:NewButton("Dropped gun ESP (credit ayy.jaylan)", "", function()
	            loadstring(game:HttpGet(('https://pancak3-hub.xyz/pf-gun-esp.html'),true))()
	        end)
end
				if game.PlaceId == 10118559731 then
			local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
			local Window = Library.CreateLib("Pancake Hub - Nico's Nextbot's ", "Ocean")
			wait(0.5)
			-- MAIN
			local Main = Window:NewTab("Main")
			local MainSection = Main:NewSection("Main")
    			MainSection:NewToggle("AutoFarm Time", "", function(state)
    if state then
    			    getgenv_yes = true
    			    while getgenv_yes == true do 
    			        wait()
local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(6.56995, 40.6205, 401.516)})
    tween:Play()
    wait(2)
    local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(6.87036, 45.748, 389.239)})
    tween:Play()
    wait(2)
        local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(130.451, 38.998, 481.006)})
    tween:Play()
wait(3)
        local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(-85.2296, 89.8239, 309.701)})
    tween:Play()
    wait(3)
            local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(112.84, 119.034, 333.821)})
    tween:Play()
    wait(3)
    end
    else
            			    getgenv_yes = false
    			    while getgenv_yes == true do 
    			        wait()
local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(6.56995, 40.6205, 401.516)})
    tween:Play()
    wait(2)
    local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(6.87036, 45.748, 389.239)})
    tween:Play()
    wait(2)
        local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1.5), {CFrame = CFrame.new(130.451, 38.998, 481.006)})
    tween:Play()
wait(3)
        local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(-85.2296, 89.8239, 309.701)})
    tween:Play()
    wait(3)
            local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2), {CFrame = CFrame.new(112.84, 119.034, 333.821)})
    tween:Play()
    wait(3)game:GetService("ReplicatedStorage").Remote.RemoteFunction:InvokeServer(ohString1, ohNumber2)
    			    end
    end
end)
			MainSection:NewButton("Tp To Bacrkooms", "teleports u in the backrooms", function()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.3182, 21.9246, 867.794)
			end)
    			MainSection:NewToggle("Walkspeed", "", function(state)
    if state then
    			    getgenv_yes = true
    			    while getgenv_yes == true do 
    			        wait()
    			           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
    			    end
else
                			    getgenv_yes = false
    			    while getgenv_yes == true do 
    			        wait()
    			            			     
    			           game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
    			    end
    
end
end)
end