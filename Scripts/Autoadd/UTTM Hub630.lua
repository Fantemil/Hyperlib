local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()
local Window = OrionLib:MakeWindow({Name = "UTMM Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "UTMMfolder"})
local Tab = Window:MakeTab({
	Name = "Most UTMMs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts"
})


Tab:AddButton({
	Name = "Get All Weapons",
	Callback = function()
      		print("button pressed")
 for i,v in pairs(game.Players.LocalPlayer.Weapons:GetChildren()) do v.Value = true end
    end    
})
Tab:AddButton({
	Name = "Put Items in Shop",
	Callback = function()
      		print("button pressed")
for i,v in pairs(game.Lighting:GetDescendants()) do

if v.ClassName == "StringValue" and v.Name == "Shop" then v.Value = "ExampleShop" end end
    end    
})
Tab:AddButton({
	Name = "Delete Gamepass Doors",
	Callback = function()
      		print("button pressed")
while wait() do
game:GetService("Workspace")["GP Door"]:Destroy()
      end
    end    
})
Tab:AddButton({
	Name = "Delete Badge Doors",
	Callback = function()
      		print("button pressed")
while wait() do
game:GetService("Workspace").BadgeDoor:Destroy()
      end
    end    
})
local Tab = Window:MakeTab({
    Name = "Normally Utmm Game",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Scripts for Normally Utmm Game"
})

--[[
Name = <string> - The name of the section.
]]
OrionLib:MakeNotification({
    Name = "nothing here",
    Content = "just nothing.",
    Image = "rbxassetid://4483345998",
    Time = 5
})
Tab:AddButton({
	Name = "HAKAI GOD BONE",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("HAKAI"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "POP BLADE",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("POp Blade"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "HITOMI SWORD",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("GKATANA"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "takusatu's Imposter Knife",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("Imposter Knife"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "rensukego's bone sword",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("bone sword"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "The Dark Lord's Blade",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("The Dark Lord's Blade"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Corruptions 010101 Effect",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("Corruptions 010101 Effect"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Black Imposter Cone",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("Cone"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Clock.",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("Clock."),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "aaa (armor)",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("aaa"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Put Items in Shop (go to food shop first)",
	Callback = function()
      		print("button pressed")
for i,v in pairs(game.Lighting:GetDescendants()) do

if v.ClassName == "StringValue" and v.Name == "Shop" then v.Value = "Food" end end
    end    
})
Tab:AddButton({
	Name = "Delete Badge Doors to Christmas Area",
	Callback = function()
      		print("button pressed")
game.workspace.BadgeDoor:Destroy()
game.workspace.BadgeDoor:Destroy()
    end    
})
Tab:AddButton({
	Name = "Teleport to Unreleased Boss",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.430756, 4.16374493, 580.940002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end    
})
local Tab = Window:MakeTab({
	Name = "Epic Special Mania",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts for Epic Special Mania"
})
Tab:AddButton({
	Name = "Infinite Damage Weapon",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("InfDMG"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end
})
Tab:AddButton({
	Name = "Infinite HP",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("InfHP"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end
})
local Tab = Window:MakeTab({
	Name = "Some Utmm Dummy Game",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts for Some Utmm Dummy Game"
})
Tab:AddButton({
	Name = "Free Gold",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("StrangeKnife"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Admin Armor",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("admin armor"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
local Tab = Window:MakeTab({
	Name = "Utmm: Roblox tale 2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts for Utmm: Roblox tale 2"
})
Tab:AddButton({
	Name = "OP Weapon",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("the")
}

game:GetService("Lighting"):WaitForChild("EquipSkin"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Teleport To Event Bosses",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(305.649994, 39.6381454, -780.594116, 0.0754395276, -0.434397787, 0.897556365, -1.71779924e-10, 0.90012145, 0.435639173, -0.997150421, -0.0328644142, 0.0679047257)
    end    
})
local Tab = Window:MakeTab({
	Name = "Undertale: The Last Monsters",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts for Undertale: The Last Monsters"
})
Tab:AddButton({
	Name = "Inf Dmg Weapon",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("GOD weapon"),
    [2] = "Weapon"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Inf Health Armor",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Armor"):WaitForChild("GOD armor"),
    [2] = "Armor"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "ADMIN Soul",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("SOULs"):WaitForChild("ADMIN soul"),
    [2] = "SOUL"
}

game:GetService("Lighting"):WaitForChild("Buy"):FireServer(unpack(args))
    end    
})
local Tab = Window:MakeTab({
	Name = "Paradox Utmm Mania",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Scripts for Paradox Utmm Mania"
})
Tab:AddButton({
	Name = "Inf Gold Farm",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-22.6317387, 59.5046768, 493.724915, -0.169594765, 0.196352124, -0.965755463, -2.22113394e-09, 0.979951203, 0.1992383, 0.985513926, 0.0337897763, -0.166194588)
    end    
})
Tab:AddButton({
	Name = "Teleport To Admin Area",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.7472572, 41.7054901, 409.129181, -0.0462736599, 0.455680549, -0.888939798, -3.22810445e-10, 0.889893115, 0.456169188, 0.998928845, 0.021108618, -0.0411786065)
    end    
})
Tab:AddButton({
	Name = "Sam's Sword",
	Callback = function()
      		print("button pressed")
local args = {
    [1] = game:GetService("Lighting"):WaitForChild("Weapons"):WaitForChild("Sam's Sword (Metal Gear Rising)")
}

game:GetService("Lighting"):WaitForChild("EquipSkin"):FireServer(unpack(args))
    end    
})
Tab:AddButton({
	Name = "Delete a Reset Door",
	Callback = function()
      		print("button pressed")
workspace.ResetDoor.ResetDoor:Destroy()
    end    
})
Tab:AddButton({
	Name = "Teleport To Insane Owner (after you delete the reset door)",
	Callback = function()
      		print("button pressed")
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(99.2397766, 25.8000221, -132.484543, -0.4856143, 0, -0.874173164, 0, 1, 0, 0.874173164, 0, -0.4856143)
    end    
})
