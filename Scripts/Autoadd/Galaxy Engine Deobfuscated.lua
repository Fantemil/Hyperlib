-- Deobfuscated by OnlyJustinn
-- Made by !! Orchi#1812

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Galaxy Engine", "Ocean")

-- tabs --

local Credit = Window:NewTab("Credits")
local One = Window:NewTab("Main")
local Two = Window:NewTab("Guns")
local Three = Window:NewTab("Player")
local Four = Window:NewTab("Teleports")
local Five = Window:NewTab("Commands")
-- Credits --

local Credit = Credit:NewSection("Credits")
Credit:NewLabel("Deobfuscated by OnlyJustinn")


-- Main --
local Main = One:NewSection("Main")

Main:NewButton("Remove doors", "Removes every doors", function()
    			for i,d in pairs(game.Workspace.Doors:GetChildren()) do
				if d.ClassName == "Model" then
					d:Destroy()
				end
			end
end)

Main:NewButton("Remove Fences", "Removes every fences", function()
    			game.Workspace["Prison_Fences"]["Prison_Gate"]:Destroy()
			game.Workspace["Prison_Fences"]["gate"]:Destroy()
end)

Main:NewButton("Get Commands + Auto Respawn + Neutral", "Gives you admin commands!", function()
    		loadstring(game:HttpGet(('https://raw.githubusercontent.com/XTheMasterX/Scripts/Main/PrisonLife'),true))()
end)


Main:NewKeybind("Toggle UI (LeftAlt)", "Hides the UI (press leftAlt to show again)", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)

Main:NewTextBox("Put smth in logs (F9 TO SEE)", "Print an info to the logs", function(txt)
	print(txt)
end)

-- GUNS --

local Guns = Two:NewSection("Guns")

Guns:NewButton("Give all guns", "Gives you every guns", function()
    print("All Weapons Given!")
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver.M9.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.single.Hammer.ITEMPICKUP)
			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
            			workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M4A1"].ITEMPICKUP)
                        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Redicola"].ITEMPICKUP)
end)

Guns:NewButton("Silent Aim", "Gives you perfect aim!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ObviouslyOrchi/Prison-life/main/Prison%20life%20aim"))()
end)


-- player --

local Player = Three:NewSection("Player")

Player:NewSlider("WalkSpeed", "Changes your walkspeed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Player:NewSlider("JumpPower", "Changes your JumpPower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Commands = Five:NewSection("Player")
-- Commands
Commands:NewLabel(":rank player — gives player commands")
Commands:NewLabel(":kill player — kills player")
Commands:NewLabel(":sa player — spam arrest player")
Commands:NewLabel(":crim player — makes player criminal")
Commands:NewLabel(":bring player — brings player")
Commands:NewLabel(":goto player — makes you go to player")
Commands:NewLabel(":void player — voids player")
Commands:NewLabel(":key player — gives player keycard")
Commands:NewLabel(":cuffs player — gives player handcuffs")
Commands:NewLabel(":trap player — traps player")
Commands:NewLabel(":yard player — brings player to yard")
Commands:NewLabel(":base player — brings player to criminal base")
Commands:NewLabel(":prison player — brings player to prison")
Commands:NewLabel(":lk — loopkills player")
Commands:NewLabel(":aura — gives player kill aura")
Commands:NewLabel(":virus — makes anyone who touch player dies")
Commands:NewLabel(":oof — kills everyone")
Commands:NewLabel(":spike — lag spike")
Commands:NewLabel(":bspike — big lag spike")
Commands:NewLabel(":lag — lags the server")
Commands:NewLabel(":crash — crashes the server")
Commands:NewLabel(":tk player — teleport you to player and kills them")
Commands:NewLabel(":ltk player — loops tpkill")
Commands:NewLabel(":logs — prints all used cmds")

-- teleports --
local Section44 = Four:NewSection("Teleports")

Section44:NewButton("Outside of prison", "Teleports You outside of the prison!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(451.6684265136719, 98.0399169921875, 2216.338134765625)
		end)
		Section44:NewButton("Prison Yard", "Teleports You to the Prison Yard", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4671630859375, 97.99992370605469, 2517.583740234375)
		end)
		Section44:NewButton("Kitchen", "Teleports You to the Kitchen!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.641845703125, 99.98993682861328, 2237.67333984375)
		end)
		Section44:NewButton("Prison Cells", "Teleports You to the Prison Cells!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5551147460938, 99.98998260498047, 2441.700927734375)
		end)
		Section44:NewButton("Surveilance Room", "Teleports You to the Surveilance Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(795.251953125, 99.98998260498047, 2327.720703125)
		end)
		Section44:NewButton("Break Room", "Teleports You to the Break Room!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(800.0896606445312, 99.98998260498047, 2266.71630859375)
		end)
		Section44:NewButton("Police Armory", "Teleports You to the Police Armory!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.2889404296875, 99.98998260498047, 2270.99658203125)
		end)
		Section44:NewButton("Police Room", "Teleports to to the Police Room", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(836.5386352539062, 99.98998260498047, 2320.604248046875)
		end)
		Section44:NewButton("Cafeteria", "Teleports you to the Cafeteria!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(918.994873046875, 99.98993682861328, 2325.73095703125)
		end)
		Section44:NewButton("Criminal Base Inside", "Teleports you to the Criminal Base Inside!", function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.8451538085938, 109.32379150390625, 2053.11376953125)
		end)