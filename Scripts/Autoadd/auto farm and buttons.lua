local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Infinite Rarities Script (WIP)", "Ocean")
 
local startergui = game:GetService("StarterGui")
 
    -- Main
    
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("use dex explorer to add more button teleports.")
    local MainSection = Main:NewSection("you can also edit the script to your desire.")
 
 
    MainSection:NewButton("Prestige TP", "Makes you tp to prestige", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
    MainSection:NewButton("Rarity Roll TP", "Makes you tp to RarityGet", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
    
    MainSection:NewButton("Sacrifice TP", "Makes you tp to Sacrifice", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Sacrifice"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
    
    MainSection:NewButton("Ascend TP", "Makes you tp to the Ascend button", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Ascend"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
MainSection:NewButton("SP Luck Upgrade TP", "Makes you tp to the luck upgrade button", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["UpgradeLuck"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
MainSection:NewButton("Bulk Roll TP", "Makes you tp to the Bulk Roll button", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["UpgradeBr"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
MainSection:NewButton("SP Multiplier TP", "Makes you tp to the SP Multiplier button", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["UpgradeSPM"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
MainSection:NewButton("Roll Cooldown TP", "Makes you tp to the Roll Cooldown button", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["UpgradeRcd"] 
player.HumanoidRootPart.CFrame = part.CFrame
    end)
 
local Farm = Window:NewTab("Farm")
    local MainSection = Farm:NewSection("still a wip so just ignore this or add on")
    local MainSection = Farm:NewSection("also you need to edit the script and re-execute to")
    local MainSection = Farm:NewSection("adjust how long the farming goes on")
    
    MainSection:NewButton("Auto Prestige and RarityGet TP (slow)", "Makes you tp to prestige and RarityGet", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (3)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (3)
end)
 
 MainSection:NewButton("Auto Prestige and RarityGet TP (fast)", "Makes you tp to prestige and RarityGet", function()
        local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
 
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
 
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["Prestige"] 
player.HumanoidRootPart.CFrame = part.CFrame
    wait (.2)
local player = game.Players.LocalPlayer.Character
local part = game.Workspace["RarityGet"] 
player.HumanoidRootPart.CFrame = part.CFrame
wait (1)
end)
 