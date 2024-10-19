-- credit when using

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Build and Survive! Classic - Free - ð¾", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

local killAura = false
local distance = 60
local damage = 9e999

tab.newLabel("")
tab.newToggle("Kill Aura", "Toggle", false, function(killAuraToggle)
    killAura = killAuraToggle
    while killAura do
        for _, monster in pairs(workspace.__THINGS.Monsters:GetChildren()) do
            if monster:IsA("Model") and (monster.PrimaryPart or monster:FindFirstChild("HumanoidRootPart")) then
                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - (monster.PrimaryPart.Position or monster.HumanoidRootPart.Position)).magnitude <= distance then
                    workspace.__THINGS.__REMOTES.mobdodamage:FireServer(unpack({
                        [1] = {
                            [1] = {
                                [1] = {
                                    [1] = monster,
                                    [2] = damage
                                }
                            }
                        }
                    }))
                end
            end
        end
        wait(1)
    end
end)

tab.newInput("Distance", "Set Distance For Kill Aura Set It To 500+ For Auto Kill.", function(inputDistance)
    distance = tonumber(inputDistance) or distance
end)

tab.newInput("Damage", "Set Damage Amount.", function(inputDamage)
    damage = tonumber(inputDamage) or damage
end)
tab.newLabel("")
tab.newButton("Kill Monsters", "Kill All Monsters At Once", function()
    for _, monster in pairs(workspace.__THINGS.Monsters:GetChildren()) do
        if monster:IsA("Model") and (monster.PrimaryPart or monster:FindFirstChild("HumanoidRootPart")) then
            workspace.__THINGS.__REMOTES.mobdodamage:FireServer(unpack({
                [1] = {
                    [1] = {
                        [1] = {
                            [1] = monster,
                            [2] = 9e999
                        }
                    }
                }
            }))
        end
    end
end)

tab.newButton("Make Monsters Immortal", "Set Damage To -9e999", function()
    for _, monster in pairs(workspace.__THINGS.Monsters:GetChildren()) do
        if monster:IsA("Model") and (monster.PrimaryPart or monster:FindFirstChild("HumanoidRootPart")) then
            workspace.__THINGS.__REMOTES.mobdodamage:FireServer(unpack({
                [1] = {
                    [1] = {
                        [1] = {
                            [1] = monster,
                            [2] = -9e999
                        }
                    }
                }
            }))
        end
    end
end)
tab.newLabel("")

local heartCollectionEnabled = false
local starCollectionEnabled = false
local coinCollectionEnabled = false

local function collectItem(item)
    if item:FindFirstChild("UID") then
        local args = {
            [1] = {
                [1] = {
                    [1] = item.UID.Value
                }
            }
        }
        workspace.__THINGS.__REMOTES.redeemdrop:FireServer(unpack(args))
    end
end

local function gatherHearts()
    while heartCollectionEnabled do
        wait(5)
        for _, item in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
            if item.Name == "Heart" then
                collectItem(item)
            end
        end
    end
end

local function gatherStars()
    while starCollectionEnabled do
        wait(1)
        for _, item in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
            if item.Name == "Star" then
                collectItem(item)
            end
        end
    end
end

local function gatherCoins()
    while coinCollectionEnabled do
        wait(1)
        for _, item in pairs(game:GetService("Workspace")["__DEBRIS"].MonsterDrops:GetChildren()) do
            if item.Name == "Coin" then
                collectItem(item)
            end
        end
    end
end

tab.newToggle("Heart Collector", "Toggle Heart Collection", false, function(state)
    heartCollectionEnabled = state
    if state then gatherHearts() end
end)

tab.newToggle("Star Collector", "Toggle Star Collection", false, function(state)
    starCollectionEnabled = state
    if state then gatherStars() end
end)

tab.newToggle("Coin Collector", "Toggle Coin Collection", false, function(state)
    coinCollectionEnabled = state
    if state then gatherCoins() end
end)
tab.newLabel("")

local tab = DrRayLibrary.newTab("Building", "ImageIdHere")

local selectedBlock = "Wood"
local materials = {
    "Wood",
    "Brick",
    "Metal",
    "Obsidian",
    "Firebrick"
}

tab.newLabel("")
tab.newDropdown("Blocks", "Select Type Of Block", materials, function(selBlock)
    selectedBlock = selBlock
end)
tab.newLabel("!!!â¢Blocks That You Have Will Only Work!!â¢!")
tab.newToggle("Rain Blocks", "Toggle", false, function(state)
    rainBlocks = state
    if state then
        coroutine.wrap(function()
            while rainBlocks do
                workspace.__THINGS.__REMOTES.placeblock:FireServer(unpack({
                    [1] = {
                        [1] = CFrame.new(
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X + math.random(-100, 100),
                            247,
                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z + math.random(-100, 100)
                        ),
                        [2] = selectedBlock,
                        [3] = workspace.__THINGS.BuildArea
                    }
                }))
                wait()
            end
        end)()
    end
end)

tab.newToggle("Spam Blocks", "Toggle", false, function(state)
    spamBlocks = state
    if state then
        coroutine.wrap(function()
            while spamBlocks do
                wait()
                workspace.__THINGS.__REMOTES.placeblock:FireServer({
                    [1] = {
                        [1] = CFrame.new(game.Players.LocalPlayer:GetMouse().Hit.p) * CFrame.Angles(0, 0, 0),
                        [2] = selectedBlock,
                        [3] = workspace.__THINGS.BuildArea
                    }
                })
            end
        end)()
    end
end)
tab.newLabel("")
tab.newButton("Save/Load Build 2AreYouMental110", "Click To Run", function()
    loadstring(game:HttpGet('https://rawscripts.net/raw/Build-and-Survive!-Classic-Save-Load-Source-Kevin-2AreYouMental110-Thanks-20564'))()
end)

tab.newButton("Build Wall", "Defense", function()
local blockHeight = 4
local totalHeight = 32
local blocksToPlace = totalHeight / blockHeight

local leftX = -252
local rightX = 112

local wallWidth = rightX - leftX
local blocksInWidth = math.ceil(wallWidth / 4) 

for i = 0, blocksToPlace - 1 do
    local leftArgs = {
        [1] = {
            [1] = CFrame.new(leftX, -8 + i * blockHeight, 52) * CFrame.Angles(0, 0, 0),
            [2] = selectedBlock,
            [3] = workspace.__THINGS.BuildArea
        }
    }
    workspace.__THINGS.__REMOTES.placeblock:FireServer(unpack(leftArgs))

    local rightArgs = {
        [1] = {
            [1] = CFrame.new(rightX, -8 + i * blockHeight, 52) * CFrame.Angles(0, 0, 0),
            [2] = selectedBlock,
            [3] = workspace.__THINGS.BuildArea
        }
    }
    workspace.__THINGS.__REMOTES.placeblock:FireServer(unpack(rightArgs))

    for j = 0, blocksInWidth - 1 do
        local wallArgs = {
            [1] = {
                [1] = CFrame.new(leftX + (j * 4), -8 + i * blockHeight, 52) * CFrame.Angles(0, 0, 0),
                [2] = selectedBlock,
                [3] = workspace.__THINGS.BuildArea
            }
        }
        workspace.__THINGS.__REMOTES.placeblock:FireServer(unpack(wallArgs))
    end

    wait()
end
end)
tab.newLabel("")