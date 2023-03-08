Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
Window = Library.CreateLib("Kingdom Life Shitter", "Synapse")
-- MAIN
Main = Window:NewTab("Main")
MainSection = Main:NewSection("Useful")
MainSection1 = Main:NewSection("Gamepass Morphs (USE IN SPAWN)")
MainSection2 = Main:NewSection("Tool Menu (UNEQUIP TOOLS FIRST)")
MainSection:NewButton("Enable PVP", "Puts you in PVP mode if you are in Roleplay Mode.", function()
game:GetService("ReplicatedStorage").Remotes.PVP:FireServer()
end)
MainSection:NewToggle("God Mode (SELECT CHARACTER FIRST)", "Gives you God Mode.", function(state)
if state then
_G.God = true
while _G.God == true do
wait()
game:GetService("ReplicatedStorage").Remotes.Guards.Elite:FireServer()
end
else
_G.God = false
end
end)
MainSection1:NewButton("Elite Guard", "Turns you into an Elite Guard.", function()
game:GetService("ReplicatedStorage").Remotes.Guards.Elite:FireServer()
end)
MainSection1:NewButton("Necro Elite", "Turns you into a Necro Elite.", function()
game:GetService("ReplicatedStorage").Remotes.Necro.Elite:FireServer()
end)
MainSection1:NewButton("Elf Elite", "Turns you into an Elf Elite.", function()
game:GetService("ReplicatedStorage").Remotes.Elves.ElfElite:FireServer()
end)
MainSection2:NewButton("Remove Tools", "Removes your tools.", function()
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
if v.ClassName == "Tool" or "HopperBin" then
v:Destroy()
end
end
end)
MainSection2:NewButton("Default Tools", "Gives you the default tools.", function()
game:GetService("ReplicatedStorage").Remotes.Tools:FireServer()
end)
MainSection2:NewButton("OP Excalibur", "Gives you the Excalibur.", function()
local Excalibur = game:GetService("ReplicatedStorage").Tools.RPWeapons.Elite.Elite
local amount = 40
for a = amount, 1, -1 do
Excalibur:FireServer(a)
end
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.name == "Excalibur" then
v.Parent = game.Players.LocalPlayer.Character
end
end
end)
MainSection2:NewButton("OP Aicamacil", "Gives you the Aicamacil.", function()
local Aicamacil = game:GetService("ReplicatedStorage").Tools.RPWeapons.ElfElite.ElfElite
local amount = 40
for a = amount, 1, -1 do
Aicamacil:FireServer(a)
end
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.name == "Aicamacil" then
v.Parent = game.Players.LocalPlayer.Character
end
end
end)
MainSection2:NewButton("OP Bone", "Gives you a bone.", function()
local Bone = game:GetService("ReplicatedStorage").Tools.RPWeapons.Skeleton.Weapon17
local amount = 40
for a = amount, 1, -1 do
Bone:FireServer(a)
end
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.name == "Bone" then
v.Parent = game.Players.LocalPlayer.Character
end
end
end)
MainSection2:NewButton("OP Club", "Gives you a club.", function()
local Club = game:GetService("ReplicatedStorage").Tools.RPWeapons.Ogre.Weapon14
local amount = 40
for a = amount, 1, -1 do
Club:FireServer(a)
end
wait(0.5)
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.name == "Club" then
v.Parent = game.Players.LocalPlayer.Character
end
end
end)
-- CREDITS
Credit = Window:NewTab("Credits")
CreditSection = Credit:NewSection("Made by nu7#3943")
CreditSection:NewLabel("Kavo UI Library by xHeptc")