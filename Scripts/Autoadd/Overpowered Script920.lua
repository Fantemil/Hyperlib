-- Credits when using a code.

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("REVENGE OF THE SLIMES!!! - Free - ð¢", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newLabel("Main")
local coins = -9e9

tab.newInput("Coins", "Enter A Value To Set Amount", function(inputCoins)
    coins = tonumber(inputCoins) or -9e9
end)

tab.newButton("Obtain Coins", "Obtain Entered Value Amount", function()
    game.Workspace.DoShopPurchase:InvokeServer(game.Players.LocalPlayer.leaderstats.Coins, -coins, "skill0")
end)

local player = game.Players.LocalPlayer

local function onTool(toolName, callback)
    local tool = player.Backpack:WaitForChild(toolName)
    local isEquipped = false

    tool.Equipped:Connect(function()
        if not isEquipped then
            callback()
            isEquipped = true
        end
    end)

    tool.Unequipped:Connect(function()
        isEquipped = false
    end)
end

local function setCooldown()
    local cooldownValue = player.PlayerGui.ItemGui.SelectedFrame.Selected.CoolDown
    cooldownValue.Value = -math.huge

    cooldownValue.Changed:Connect(function()
        if cooldownValue.Value ~= -math.huge then
            cooldownValue.Value = -math.huge
        end
    end)
end

local function setMaxClones()
    local maxClonesValue = player.PlayerGui.ItemGui.SelectedFrame.Selected.MaxClones
    maxClonesValue.Value = math.huge

    maxClonesValue.Changed:Connect(function()
        if maxClonesValue.Value ~= math.huge then
            maxClonesValue.Value = math.huge
        end
    end)
end

local function setArrowCooldowns()
    for i = 0, 8 do
        local cooldownValue = player.PlayerGui.BowSkills.Frame:FindFirstChild("skill" .. i).cooldown
        cooldownValue.Value = -math.huge

        cooldownValue.Changed:Connect(function()
            if cooldownValue.Value ~= -math.huge then
                cooldownValue.Value = -math.huge
            end
        end)
    end
end

tab.newButton("No Build Cooldown", "Click To Enable No Cooldown", function()
    local success = pcall(setCooldown)
    if not success then
        onTool("Build", function()
        wait(0.69)
            setCooldown()
        end)
    end
end)

tab.newButton("Infinite MaxClones", "Click To Enable Infinite Max Clones", function()
    local success = pcall(setMaxClones)
    if not success then
        onTool("Build", function()
        wait(0.69)
            setMaxClones()
        end)
    end
end)

tab.newButton("Unlock All", "Unlock Things Except Gamepass", function()
    local boolValues = player:GetChildren()
    for _, obj in ipairs(boolValues) do
        if obj:IsA("BoolValue") and not obj.Value then
            obj.Value = true
        end
    end
end)

tab.newButton("Obtain Chest Gears","Obtain All Chest Gears", function()
local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local DoShopPurchase = workspace.DoShopPurchase

local chests = {"Chest1Gear", "Chest2Gear", "Chest3Gear"}

local function purchaseGear(gearName, chestName)
    local args = {
        [1] = Players.LocalPlayer.leaderstats.Coins,
        [2] = 0,
        [3] = chestName,
        [4] = gearName
    }
    DoShopPurchase:InvokeServer(unpack(args))
end

for _, chest in ipairs(chests) do
    local gearFolder = Lighting:FindFirstChild(chest)
    if gearFolder then
        for _, gear in ipairs(gearFolder:GetChildren()) do
            if gear:IsA("Tool") then
                local chestName = chest:sub(1, -5) 
                purchaseGear(gear.Name, chestName)
                wait(0.0001)
            end
        end
    end
end
end)
tab.newLabel("")

local tab = DrRayLibrary.newTab("Bow Skill", "ImageIdHere")

tab.newLabel("Bow Skill")

local bowSkills = {
    "skill1",
    "skill2",
    "skill3",
    "skill4",
    "skill5",
    "skill6",
    "skill7",
    "skill8"
}

local bowSkill = nil
local spam = false
local kill = false
local aura = false
local delay = 0.001

local player = game:GetService("Players").LocalPlayer
local mouse = player:GetMouse()

tab.newButton("No Arrow Cooldown", "Click To Enable No Cooldown", function()
    local success = pcall(setArrowCooldowns)
    if not success then
        onTool("Bow", function()
        wait(0.69)
            setArrowCooldowns()
        end)
    end
end)

tab.newButton("Allways CanShoot","Click To Enable", function()
local player = game.Players.LocalPlayer
local bowTool = player.Backpack:WaitForChild("Bow")
local canShootValue = bowTool:WaitForChild("CanShoot")

canShootValue.Changed:Connect(function()
    if not canShootValue.Value then
        canShootValue.Value = true
    end
end)

if not canShootValue.Value then
    canShootValue.Value = true
end
end)

tab.newDropdown("Bow Skill", "Select A Bow Skill", bowSkills, function(selectedBowSkill)
    bowSkill = selectedBowSkill
end)

tab.newInput("Delay", "Set Delay", function(inputDelay)
    delay = tonumber(inputDelay)
end)

tab.newToggle("Spam Bow Skill", "Toggle", false, function(spamToggle)
    spam = spamToggle
    if spam then
        while spam do
            task.wait(delay)
            local mousePosition = mouse.Hit.Position
            local args = {
                [1] = mousePosition,
                [2] = bowSkill
            }
            game:GetService("Players").LocalPlayer.Character.Bow.Shoot.RemoteEvent:FireServer(unpack(args))
        end
    end
end)

tab.newToggle("Auto Kill Slime", "Toggle", false, function(killToggle)
    kill = killToggle
    if kill then
        while kill do
            task.wait(delay)
            local character = player.Character or player.CharacterAdded:Wait()
            local remoteEvent = character.Bow.Shoot.RemoteEvent
            
            for _, slime in pairs(workspace.Slimes:GetChildren()) do
                if slime:IsA("Model") and slime:FindFirstChild("Slime") then
                    local slimePart = slime.Slime
                    local slimePosition = slimePart.Position
                    
                    local args = {
                        [1] = slimePosition,
                        [2] = bowSkill
                    }

                    remoteEvent:FireServer(unpack(args))
                end
            end
        end
    end
end)

tab.newToggle("Bow Skill Aura", "Toggle", false, function(auraToggle)
    aura = auraToggle
    if aura then
        while aura do
            task.wait(delay)
            local character = player.Character or player.CharacterAdded:Wait()
            local torso = character:WaitForChild("HumanoidRootPart")

            local remoteEvent = character.Bow.Shoot.RemoteEvent
            
            local torsoPosition = torso.Position
            local args = {
                [1] = torsoPosition,
                [2] = bowSkill
            }

            remoteEvent:FireServer(unpack(args))
        end
    end
end)
tab.newLabel("")

local tab = DrRayLibrary.newTab("Building", "ImageIdHere")

tab.newLabel("Building")
    
local objects = { 
    "Base",
    "Block",
    "Hut",
    "Ladder",
    "Part",
    "Plate",
    "Stairs",
    "Wall",
    "Cannon",
    "Corner",
    "Crossbow",
    "Dart Blaster",
    "Defensive Wall",
    "Hall",
    "Spike Wall"
}

local object = nil
local rain = false
local delay = 0.0001

tab.newButton("Build Save/Load - 2AreYouMental110","Click To Run", function()
loadstring(game:HttpGet('https://pastebin.com/raw/0LMfSyiM'))()
end)

tab.newDropdown("Objects","Select A Object", objects, function(selectedObject)
    object = selectedObject
end)

tab.newInput("Delay","Set Delay", function(inputDelay)
    delay = inputDelay
    delay = tonumber(delay)
end)

tab.newToggle("Rain","Toggle", false, function(rainToggle)
rain = rainToggle
while rain do
game:GetService("Players").LocalPlayer.Character.Build.Place:InvokeServer(
        CFrame.new(
            game.Players.LocalPlayer.Character.PrimaryPart.Position.X + math.random(-5, 5), 
            game.Players.LocalPlayer.Character.PrimaryPart.Position.Y + 50, 
            game.Players.LocalPlayer.Character.PrimaryPart.Position.Z + math.random(-5, 5)
        ) * CFrame.Angles(-math.pi, 0, -math.pi),
        "Part"
    )
    wait(delay)
end
end)

tab.newLabel("")