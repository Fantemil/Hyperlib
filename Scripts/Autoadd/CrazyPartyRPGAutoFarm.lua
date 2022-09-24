-- VARIABLES N SETTINGS
local ToolName = 'Magma Fist'
local DEBUG_CONSOLE = true
local AmountToKillTheLobster = 35

local Backpack = game:GetService("Players").LocalPlayer.Backpack
local ToEquip = Backpack:WaitForChild(ToolName, 42069)

-- KINDA SAFE ZONE
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(254.519745, 64.3367157, 689.374634, -0.99996227, -6.31235197e-09, 0.00868332013, -5.79793014e-09, 1, 5.92677054e-08, -0.00868332013, 5.92151288e-08, -0.99996227)

-- FUNCTIONS
local function BuyEveryThing(Object)
    local TableOfItems = {}

    for _, Child in ipairs(Object:GetChildren()) do
        game:GetService("ReplicatedStorage").GameRemotes.BuyEvent:FireServer(Child.Name)
        table.insert(TableOfItems, Child.Name)
    end
    
    return TableOfItems
end

local function SellEveryThing(Object)
 local TableOfItems = {}

 for _, Child in ipairs(Object:GetChildren()) do
  game:GetService("ReplicatedStorage").GameRemotes.SellEvent:FireServer(Child.Name)
  table.insert(TableOfItems, Child.Name)
 end

 return TableOfItems
end

-- DEBUG
if DEBUG_CONSOLE then
 rconsolename('CONSOLE DEBUG')
end

task.wait(1.5)

-- MAIN
if not ToEquip then
 rconsoleprint('Player did not have the tool : ' .. ToEquip.Name)
 task.wait(1)
 BuyEveryThing(game.ReplicatedStorage.GameItems)
 task.wait(1)
 rconsolewarn('Equipping tool...')
 task.wait(1)
 rconsolewarn('Equipped tool!')
 ToEquip.Parent = game:GetService("Players").LocalPlayer.Character
end
task.wait(1.7)
if ToEquip then
 rconsolewarn('Player has the tool !')
 task.wait(.5)
 rconsolewarn('Equipping tool...')
 task.wait(1)
 rconsolewarn('Equipped tool!')
 ToEquip.Parent = game:GetService("Players").LocalPlayer.Character
end
task.wait(.8)
for i=1, AmountToKillTheLobster do
 rconsoleprint('Killing the lobster x' .. i ..' times\n')
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1027.80835, 150.699966, 1341.19275, -0.997265458, -9.39601108e-08, 0.0739023834, -9.67024292e-08, 1, -3.35291297e-08, -0.0739023834, -4.05839842e-08, -0.997265458)
 task.wait(1)
 mouse1click()
 task.wait(1.5)
 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(254.519745, 64.3367157, 689.374634, -0.99996227, -6.31235197e-09, 0.00868332013, -5.79793014e-09, 1, 5.92677054e-08, -0.00868332013, 5.92151288e-08, -0.99996227)
 task.wait(2)
end

rconsolwarn('Killed the lobster x' .. AmountToKillTheLobster .. ' times!\n')