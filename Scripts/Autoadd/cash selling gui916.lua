local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
local Window = OrionLib:MakeWindow({Name = "Penis Booty Fart | Selling Tools | Da Hood", HidePremium = true, SaveConfig = true, ConfigFolder = "BallsackConfig", IntroText = "Big Nigger Booty"})
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
------------------------------------------------------------------
local Tab = Window:MakeTab({
	Name = "Teleport's",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
--
local Tab1 = Window:MakeTab({
	Name = "Selling UI's",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
--
local Tab2 = Window:MakeTab({
	Name = "Alt Control's",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
--
local Tab3 = Window:MakeTab({
	Name = "Client Sided",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
--
local Tab4 = Window:MakeTab({
	Name = "Credit's",
	Icon = "rbxassetid://0",
	PremiumOnly = false
})
----------------------------------
Tab:AddButton({
	Name = "Admin Base",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-871, -32.6492119, -661, 1, 2.40087794e-09, 5.53485372e-13, -2.40087794e-09, 1, 5.4070699e-09, -5.53472415e-13, -5.4070699e-09, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Bank",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-375, 21, -349, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Casino",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-904, 21, -150, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Nightclub / Club",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-265, 23, -474, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Train Station",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(598, 47, -114, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Playground",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-262, 22, -761, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Sewers",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(111, -39, -296, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Safe Zone 1",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117, -59, 146, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
--
Tab:AddButton({
	Name = "Safe Zone 2",
	Callback = function()
      		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207, 38, 200014, 1, 0, 0, 0, 1, 0, 0, 0, 1)
  	end    
})
-------------------------------------------

Tab1:AddButton({
	Name = "Crostide Selling UI (Group Req)",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Hey!",
	Content = "Group Copied to Your Clipboard if ur not in it.",
	Image = "rbxassetid://0",
	Time = 5
})
setclipboard("https://www.roblox.com/groups/11195020/Crostides-DHC-Market#!/about")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Crostide/cdhc/main/gui"))()
  	end    
})
--
Tab1:AddButton({
	Name = "Iku UI",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/W9K/roblox-scripts/main/DHC/SimpleSeller.lua', true))()
  	end    
})
--
Tab1:AddButton({
	Name = "Cosmo UI",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/Husam-Dev/altcontroller/main/gui.lua", true))()
  	end    
})
--
Tab2:AddButton({
	Name = "Iku",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Hey!",
	Content = "Discord Copied to your Clipboard:)",
	Image = "rbxassetid://0",
	Time = 5
})
setclipboard("discord.gg/iku")
  	end    
})
--
Tab2:AddButton({
	Name = "Cosmo",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Hey!",
	Content = "Discord Copied to your Clipboard:)",
	Image = "rbxassetid://0",
	Time = 5
})
setclipboard("discord.gg/altcontrol")
  	end    
})
--
Tab2:AddButton({
	Name = "Techo or sum like that",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Hey!",
	Content = "Discord Copied to your Clipboard:)",
	Image = "rbxassetid://0",
	Time = 5
})
setclipboard("discord.gg/NfYxD88dfn")
  	end    
})
--
Tab2:AddButton({
	Name = "Encrypt",
	Callback = function()
      		OrionLib:MakeNotification({
	Name = "Hey!",
	Content = "Discord Copied to your Clipboard:)",
	Image = "rbxassetid://0",
	Time = 5
})
setclipboard("discord.gg/uxRhGnhQgJ")
  	end    
})
------------------------------
Tab3:AddButton({
	Name = "Fake Korblox",
	Callback = function()
      		local ply = game.Players.LocalPlayer
        local chr = ply.Character
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = "1"
        chr.RightUpperLeg.MeshId = "http://www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = "1" 
  	end    
})
--
Tab3:AddButton({
	Name = "Fake Headless",
	Callback = function()
game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Size = Vector3.new(0,0, 0)
    game.Players.LocalPlayer.Character.Head.Massless = true
    game.Players.LocalPlayer.Character.Head.Massless = true 
  	end    
})
--
----------------------------------
Tab4:AddLabel("putrid#2599")
--
--
Tab4:AddButton({
	Name = "Kick Yourself",
	Callback = function()
game.Players.LocalPlayer:Kick("Selling Tools")
  	end    
})