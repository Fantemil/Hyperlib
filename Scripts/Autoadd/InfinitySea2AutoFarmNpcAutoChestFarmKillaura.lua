game:GetService("Players").LocalPlayer.Data.Ban.Value = false -- idk just try :p
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Infinity Sea 2',
    Center = true, 
    AutoShow = true,
})

local Tabs = {

    Main = Window:AddTab('Farming'), 
    Teleport = Window:AddTab('Teleport'),
    Misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Npc Farm')
local RightGroupBox = Tabs.Main:AddRightGroupbox('Quest')

local Bandit = LeftGroupBox:AddButton('Bandit', function()
    if _G.Bandit == nil or _G.Bandit == false then 
_G.Bandit = true elseif 
     _G.Bandit == true then _G.Bandit = false
    end
while _G.Bandit do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "Bandit" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.Bandit == false or Library.Unloaded then break end
end
end)

local CannonBandit = LeftGroupBox:AddButton('Cannon Bandit', function()
    if _G.CannonBandit == nil or _G.CannonBandit == false then 
_G.CannonBandit = true elseif 
     _G.CannonBandit == true then _G.CannonBandit = false
    end
while _G.CannonBandit do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "CannonBandit" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.CannonBandit == false or Library.Unloaded then break end
end
end)

local BanditLeader = LeftGroupBox:AddButton('Bandit Leader', function()
    if _G.BanditLeader == nil or _G.BanditLeader == false then 
_G.BanditLeader = true elseif 
     _G.BanditLeader == true then _G.BanditLeader = false
    end
while _G.BanditLeader do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "BanditLeader" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.BanditLeader == false or Library.Unloaded then break end
end
end)

local Monkey = LeftGroupBox:AddButton('Monkey', function()
    if _G.Monkey == nil or _G.Monkey == false then 
_G.Monkey = true elseif 
     _G.Monkey == true then _G.Monkey = false
    end
while _G.Monkey do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "Monkey" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.Monkey == false or Library.Unloaded then break end
end
end)

local Gorilla = LeftGroupBox:AddButton('Gorilla', function()
    if _G.Gorilla == nil or _G.Gorilla == false then 
_G.Gorilla = true elseif 
     _G.Gorilla == true then _G.Gorilla = false
    end
while _G.Gorilla do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "Gorilla" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.Gorilla == false or Library.Unloaded then break end
end
end)

local GiantMonkey = LeftGroupBox:AddButton('GiantMonkey', function()
    if _G.GiantMonkey == nil or _G.GiantMonkey == false then 
_G.GiantMonkey = true elseif 
     _G.GiantMonkey == true then _G.GiantMonkey = false
    end
while _G.GiantMonkey do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "GiantMonkey" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.GiantMonkey == false or Library.Unloaded then break end
end
end)

local MetalPlate = LeftGroupBox:AddButton('MetalPlate', function()
    if _G.MetalPlate == nil or _G.MetalPlate == false then 
_G.MetalPlate = true elseif 
     _G.MetalPlate == true then _G.MetalPlate = false
    end
while _G.MetalPlate do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "Metal Plate" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.MetalPlate == false or Library.Unloaded then break end
end
end)

local Marine = LeftGroupBox:AddButton('Marine', function()
    if _G.Marine == nil or _G.Marine == false then 
_G.Marine = true elseif 
     _G.Marine == true then _G.Marine = false
    end
while _G.Marine do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "Marine" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.Marine == false or Library.Unloaded then break end
end
end)

local MarineHaki = LeftGroupBox:AddButton('MarineHaki', function()
    if _G.MarineHaki == nil or _G.MarineHaki == false then 
_G.MarineHaki = true elseif 
     _G.MarineHaki == true then _G.MarineHaki = false
    end
while _G.MarineHaki do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "MarineHaki" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.MarineHaki == false or Library.Unloaded then break end
end
end)

local AxeHand = LeftGroupBox:AddButton('AxeHand', function()
    if _G.AxeHand == nil or _G.AxeHand == false then 
_G.AxeHand = true elseif 
     _G.AxeHand == true then _G.AxeHand = false
    end
while _G.AxeHand do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "AxeHand" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.AxeHand == false or Library.Unloaded then break end
end
end)

local GunnersBandit = LeftGroupBox:AddButton('GunnersBandit', function()
    if _G.GunnersBandit == nil or _G.GunnersBandit == false then 
_G.GunnersBandit = true elseif 
     _G.GunnersBandit == true then _G.GunnersBandit = false
    end
while _G.GunnersBandit do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "GunnersBandit" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.GunnersBandit == false or Library.Unloaded then break end
end
end)

local IronMassBandit = LeftGroupBox:AddButton('IronMassBandit', function()
    if _G.IronMassBandit == nil or _G.IronMassBandit == false then 
_G.IronMassBandit = true elseif 
     _G.IronMassBandit == true then _G.IronMassBandit = false
    end
while _G.IronMassBandit do
    wait(.1)
for _, instance in next, game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Mobs"]:GetChildren() do
    if instance.Name == "IronMassBandit" and instance:WaitForChild("Humanoid").Health >0 then
       local behindamount = -3.5
    game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = instance:WaitForChild("HumanoidRootPart").CFrame + instance:WaitForChild("HumanoidRootPart").CFrame.lookVector * behindamount
end
end
if _G.IronMassBandit == false or Library.Unloaded then break end
end
end)


LeftGroupBox:AddDivider()

local ChestFarm = LeftGroupBox:AddButton('ChestFarm', function()
    if _G.ChestFarm == nil or _G.ChestFarm == false then 
_G.ChestFarm = true elseif 
     _G.ChestFarm == true then _G.ChestFarm = false
     end
while _G.ChestFarm do
    if _G.ChestFarm == false or Library.Unloaded then break end
task.wait()
for _, island in ipairs(workspace.___Game.__Render:GetChildren()) do
    local chests = island:FindFirstChild('__Chests') or island.Chest
    
    for _, chest in ipairs(chests:GetChildren()) do
        task.wait(.1)
        if chest.Transparency == 0 then
        fireclickdetector(chest.ClickDetector)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = chest.CFrame
        wait(.1)
        fireclickdetector(chest.ClickDetector)
        task.wait()
end
    end
    if _G.ChestFarm == false or Library.Unloaded then break end
end
if _G.ChestFarm == false or Library.Unloaded then break end
end
end)

RightGroupBox:AddLabel('Auto Quest!')

RightGroupBox:AddDivider()

local QBandit = RightGroupBox:AddButton('Bandit Quest lvl 1+', function()
    if _G.QBandit == nil or _G.QBandit == false then 
_G.QBandit = true elseif 
     _G.QBandit == true then _G.QBandit = false
    end
while _G.QBandit do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Quests"].Bandit.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Quests"].Bandit.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","Bandit",workspace.___Game.__Render.Island_Starter.__Npcs.___Quests.Bandit)
wait(.00001)
    end
if _G.QBandit == false or Library.Unloaded then break end

end
end)

local QBanditLeader = RightGroupBox:AddButton('Bandit Leader Quest lvl 10+', function()
    if _G.QBanditLeader == nil or _G.QBanditLeader == false then 
_G.QBanditLeader = true elseif 
     _G.QBanditLeader == true then _G.QBanditLeader = false
    end
while _G.QBanditLeader do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Quests"].BanditLeader.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Island_Starter"]["__Npcs"]["___Quests"].BanditLeader.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","BanditLeader",workspace.___Game.__Render.Island_Starter.__Npcs.___Quests.BanditLeader)
wait(.00001)
    end
if _G.QBanditLeader == false or Library.Unloaded then break end

end
end)

local QMonkey = RightGroupBox:AddButton('Monkey Quest lvl 25+', function()
    if _G.QMonkey == nil or _G.QMonkey == false then 
_G.QMonkey = true elseif 
     _G.QMonkey == true then _G.QMonkey = false
    end
while _G.QMonkey do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].Monkey.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].Monkey.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","Monkey",workspace.___Game.__Render.Jungle_Island.__Npcs.___Quests.Monkey)
wait(.00001)
    end
if _G.QMonkey == false or Library.Unloaded then break end
end
end)

local QGorilla = RightGroupBox:AddButton('Gorilla Quest lvl 35+', function()
    if _G.QGorilla == nil or _G.QGorilla == false then 
_G.QGorilla = true elseif 
     _G.QGorilla == true then _G.QGorilla = false
    end
while _G.QGorilla do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].Gorilla.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].Gorilla.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","Gorilla",workspace.___Game.__Render.Jungle_Island.__Npcs.___Quests.Gorilla)
wait(.00001)
    end
if _G.QGorilla == false or Library.Unloaded then break end
end
end)

local QGiantMonkey = RightGroupBox:AddButton('Giant Monkey Quest lvl 40+', function()
    if _G.QGiantMonkey == nil or _G.QGiantMonkey == false then 
_G.QGiantMonkey = true elseif 
     _G.QGiantMonkey == true then _G.QGiantMonkey = false
    end
while _G.QGiantMonkey do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].KingMonkey.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].KingMonkey.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","KingMonkey",workspace.___Game.__Render.Jungle_Island.__Npcs.___Quests.KingMonkey)
wait(.00001)
    end
if _G.QGiantMonkey == false or Library.Unloaded then break end
end
end)

local QHakiTrainer = RightGroupBox:AddButton('HakiTrainer(Metal Plate) lvl 30+', function()
    if _G.QHakiTrainer == nil or _G.QHakiTrainer == false then 
_G.QHakiTrainer = true elseif 
     _G.QHakiTrainer == true then _G.QHakiTrainer = false
    end
while _G.QHakiTrainer do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].HakiTrainer.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Jungle_Island"]["__Npcs"]["___Quests"].HakiTrainer.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","HakiTrainer",workspace.___Game.__Render.Jungle_Island.__Npcs.___Quests.HakiTrainer)
wait(.00001)
    end
if _G.QHakiTrainer == false or Library.Unloaded then break end
end
end)

local QMarine = RightGroupBox:AddButton('Marine Quest lvl 50+', function()
    if _G.QMarine == nil or _G.QMarine == false then 
_G.QMarine = true elseif 
     _G.QMarine == true then _G.QMarine = false
    end
while _G.QMarine do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].Marine.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].Marine.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","Marine",workspace.___Game.__Render.Shells_Town_Island.__Npcs.___Quests.Marine)
wait(.00001)
    end
if _G.QMarine == false or Library.Unloaded then break end
end
end)


local QMarineHaki = RightGroupBox:AddButton('Marine Haki Quest lvl 65+', function()
    if _G.QMarineHaki == nil or _G.QMarineHaki == false then 
_G.QMarineHaki = true elseif 
     _G.QMarineHaki == true then _G.QMarineHaki = false
    end
while _G.QMarineHaki do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].MarineHaki.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].MarineHaki.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","MarineHaki",workspace.___Game.__Render.Shells_Town_Island.__Npcs.___Quests.MarineHaki)
wait(.00001)
    end
if _G.QMarineHaki == false or Library.Unloaded then break end
end
end)

local QAxeHand = RightGroupBox:AddButton('Axe Hand Quest lvl 80+', function()
    if _G.QAxeHand == nil or _G.QAxeHand == false then 
_G.QAxeHand = true elseif 
     _G.QAxeHand == true then _G.QAxeHand = false
    end
while _G.QAxeHand do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].AxeHand.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Shells_Town_Island"]["__Npcs"]["___Quests"].AxeHand.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","AxeHand",workspace.___Game.__Render.Shells_Town_Island.__Npcs.___Quests.AxeHand)
wait(.00001)
    end
if _G.QAxeHand == false or Library.Unloaded then break end
end
end)

local QGunnersBandits = RightGroupBox:AddButton('Gunners Bandits Quest lvl 105+', function()
    if _G.QGunnersBandits == nil or _G.QGunnersBandits == false then 
_G.QGunnersBandits = true elseif 
     _G.QGunnersBandits == true then _G.QGunnersBandits = false
    end
while _G.QGunnersBandits do
    wait(0.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Quests"].GunnersBandits.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Quests"].GunnersBandits.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","GunnersBandits",workspace.___Game.__Render.Syrup_Island.__Npcs.___Quests.GunnersBandits)
wait(.00001)
    end
if _G.QGunnersBandits == false or Library.Unloaded then break end
end
end)

local QIronMassBandits = RightGroupBox:AddButton('Iron Mass Bandits Quest lvl 150+', function()
    if _G.QIronMassBandits == nil or _G.QIronMassBandits == false then 
_G.QIronMassBandits = true elseif 
     _G.QIronMassBandits == true then _G.QIronMassBandits = false
    end
while _G.QIronMassBandits do
    wait(.00001)
    if not game:GetService("Players").LocalPlayer:FindFirstChild("_Quest") then
        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Quests"].IronMassBandits.HumanoidRootPart.CFrame + game:GetService("Workspace")["___Game"]["__Render"]["Syrup_Island"]["__Npcs"]["___Quests"].IronMassBandits.HumanoidRootPart.CFrame.lookVector * -3
        wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("__Interaction","__Quest","IronMassBandits",workspace.___Game.__Render.Syrup_Island.__Npcs.___Quests.IronMassBandits)
wait(.00001)
    end
if _G.QIronMassBandits == false or Library.Unloaded then break end
end
end)

RightGroupBox:AddDivider()

RightGroupBox:AddLabel('Kill Aura')

local Punch = RightGroupBox:AddButton('KillAura (Punch)', function()
    if _G.Punch == nil or _G.Punch == false then 
_G.Punch = true elseif 
     _G.Punch == true then _G.Punch = false
    end
while _G.Punch do
    task.wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Combat","CombatBasic","UserMelee",5)
task.wait(.00001)
if _G.Punch == false or Library.Unloaded then break end
end
end)

local Cutlass = RightGroupBox:AddButton('KillAura (Cutlass)', function()
    if _G.Cutlass == nil or _G.Cutlass == false then 
_G.Cutlass = true elseif 
     _G.Cutlass == true then _G.Cutlass = false
    end
while _G.Cutlass do
    task.wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Combat","Cutlass","UserSword",5)
task.wait(.00001)
if _G.Cutlass == false or Library.Unloaded then break end
end
end)

local KatanaAura = RightGroupBox:AddButton('KillAura (SS1)', function()
    if _G.Katana1 == nil or _G.Katana1 == false then 
_G.Katana1 = true elseif 
     _G.Katana1 == true then _G.Katana1 = false
    end
while _G.Katana1 do
    task.wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Combat","SS1","UserSword",5)
task.wait(.00001)
if _G.Katana1 == false or Library.Unloaded then break end
end
end)

local KatanaAura2 = RightGroupBox:AddButton('KillAura (SS2)', function()
    if _G.Katana2 == nil or _G.Katana2 == false then 
_G.Katana2 = true elseif 
     _G.Katana2 == true then _G.Katana2 = false
    end
while _G.Katana2 do
    task.wait(.00001)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Combat","DualKatana","UserSword",5)
task.wait(.00001)
if _G.Katana2 == false or Library.Unloaded then break end
end
end)

local TpLeftGroupBox = Tabs.Teleport:AddLeftGroupbox('Island Teleport')
local TpRightGroupBox = Tabs.Teleport:AddRightGroupbox('Npc Teleport')

local StarterIsland = TpLeftGroupBox:AddButton('Teleport to Starter Island', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(772, 10, -1368)
end)

local JungleIsland = TpLeftGroupBox:AddButton('Teleport to Jungle Island', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-1140, 12, -2907)
end)

local ShellsTownIsland = TpLeftGroupBox:AddButton('Teleport to Shells Town Island', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2284, 9, 357)
end)

local SyrupIsland = TpLeftGroupBox:AddButton('Teleport to Syrup Island', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2064, 10, -2322)
end)

local pirateteam = TpRightGroupBox:AddButton('Change Team To Pirate', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(756, 12, -1239)
end)

local marineteam = TpRightGroupBox:AddButton('Change Team To Marine', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2213, 45, 695)
end)

local Fruit = TpRightGroupBox:AddButton('Teleport to Fruit Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(1065, 11, -990)
end)

local RemoveFruit = TpRightGroupBox:AddButton('Teleport to Fruit Remover', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(832, 10, -1030)
end)

local Pistol = TpRightGroupBox:AddButton('Teleport to Pistol Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(1131, 11, -978)
end)

local Nami = TpRightGroupBox:AddButton('Teleport to LogPose Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2064, 10, -2322)
end)

local Boat1 = TpRightGroupBox:AddButton('Boat Shop1', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(747, 11, -1381)
end)

local Cutlass = TpRightGroupBox:AddButton('Cutlass Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(-1159, 12, -3057)
end)

local Boat2 = TpRightGroupBox:AddButton('Boat Shop2', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2255, 9, 364)
end)

local Pole = TpRightGroupBox:AddButton('Pole Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(1907, 45, 714)
end)

local Katana = TpRightGroupBox:AddButton('Katana Shop(SS1)', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2470, 77, 1167)
end)

local DualFlint = TpRightGroupBox:AddButton('Dual Flint Shop', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2416, 49, -2405)
end)

local SlingShot = TpRightGroupBox:AddButton('Slingshot Shop(Mini Kabuto)', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2652, 71, -2699)
end)

local DualKatana = TpRightGroupBox:AddButton('Dual Katana Shop (SS2)', function()

game:GetService('Players').LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = CFrame.new(2560, 49, -2453)
end)

local MiscLeftGroupBox = Tabs.Misc:AddLeftGroupbox('Player')
local MiscRightGroupBox = Tabs.Misc:AddRightGroupbox('General')

local redeem = MiscRightGroupBox:AddButton('Redeem All Codes', function()
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_10K VISITS")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_100 LIKES")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_sky best animator")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!XexAndZitBestScripters")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Deploid_Family")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_50K VISITS")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_400 Likes")
wait(0.1)
game:GetService("ReplicatedStorage").___Assets.___Events.__Fires:FireServer("Code", "!Code_Friend GuizeraYT :)")
end)

local hidename = MiscLeftGroupBox:AddButton('Hide Name', function()
    if _G.hidename == nil or _G.hidename == false then 
_G.hidename = true elseif 
     _G.hidename == true then _G.hidename = false
    end
while _G.hidename do
if not game:IsLoaded() then game.Loaded:wait() end
    wait(.1)
    for i, v in next, game.Players:GetPlayers() do
game:GetService("Workspace")["___Game"]["___Characters"]:WaitForChild(v.Name):WaitForChild'BillboardGui':Destroy()
end
if _G.hidename == false or Library.Unloaded then break end
end
end)

local split = MiscLeftGroupBox:AddButton('Split Body and Remove Legs', function()
    if _G.split == nil or _G.split == false then 
_G.split = true elseif 
     _G.split == true then _G.split = false
    end
while _G.split do
if not game:IsLoaded() then game.Loaded:wait() end
    wait(.1)
    for i, v in next, game.Players:GetPlayers() do
game:GetService("Players").LocalPlayer.PlayerScripts.ResetRetry.Disabled = true
game:GetService("Workspace")["___Game"]["___Characters"]:WaitForChild(v.Name):WaitForChild'UpperTorso':WaitForChild'Waist':Destroy() wait(.1)
game:GetService("Workspace")["___Game"]["___Characters"]:WaitForChild(v.Name):WaitForChild'RightUpperLeg':Destroy() wait(.1)
game:GetService("Workspace")["___Game"]["___Characters"]:WaitForChild(v.Name):WaitForChild'LeftUpperLeg':Destroy() wait(.1)
if _G.split == false or Library.Unloaded then game:GetService("Players").LocalPlayer.PlayerScripts.ResetRetry.Disabled = false
 break end
    end
if _G.split == false or Library.Unloaded then game:GetService("Players").LocalPlayer.PlayerScripts.ResetRetry.Disabled = false
 break end
end
end)

local Antiafk = MiscRightGroupBox:AddButton('Anti Afk', function()
for _, v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
 v:Disable()
 end
end)

local MegaFpsBoost = MiscRightGroupBox:AddButton('Mega Fps Boost', function()
loadstring(game:HttpGet("https://pastebin.com/raw/FVFFkkqZ", true))()
end)

local FullBright = MiscRightGroupBox:AddButton('Full Bright', function()
_G.fullbright = true
loadstring(game:HttpGet("https://pastebin.com/raw/06iG6YkU", true))()
end)

local freezecam = MiscLeftGroupBox:AddButton('Freeze Camera', function()
    if _G.freezecam == nil or _G.freezecam == false then 
_G.freezecam = true elseif 
     _G.freezecam == true then _G.freezecam = false
    end
if _G.freezecam then
    task.wait()
         workspace.CurrentCamera.CameraType = Enum.CameraType.Scriptable
else 
             workspace.CurrentCamera.CameraType = Enum.CameraType.Custom  
 end
end)

Library:SetWatermarkVisibility(true)
Library:SetWatermark("Infinity Sea 2 - By: Kirito8888")

Library.KeybindFrame.Visible = false; 
Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)

SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder("Kirito")

SaveManager:SetFolder('Kirito/InfinitySea2')

SaveManager:BuildConfigSection(Tabs['UI Settings']) 

SaveManager:LoadAutoloadConfig()

ThemeManager:ApplyToTab(Tabs['UI Settings'])