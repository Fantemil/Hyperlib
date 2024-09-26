local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

local Backpack = LocalPlayer.Backpack
local Chests = Workspace:WaitForChild("chests")
local OpenedChests = {}
local TotalChests = 0
_G.IsFarming = true


local function getChests()
    local unopenedChests = {}
    TotalChests = 0

    for _, chest in pairs(Chests:GetChildren()) do
        if not OpenedChests[chest] then
            table.insert(unopenedChests, chest)
            TotalChests = TotalChests + 1
        end
    end

    return unopenedChests
end

local function findNearestChest(chests)
    local nearestChest
    local shortestDistance = math.huge
    local playerPosition = HumanoidRootPart.Position

    for _, chest in pairs(chests) do
        local distance = (playerPosition - chest.Position).magnitude
        if distance < shortestDistance then
            shortestDistance = distance
            nearestChest = chest
        end
    end

    return nearestChest
end

local function activateProximityPrompt(chest)
    local proximityPrompt = chest:FindFirstChild("ProximityPrompt")
    if proximityPrompt then
        proximityPrompt:InputHoldBegin(Enum.UserInputType.Keyboard)
        wait(1.5)   
 proximityPrompt:InputHoldEnd(Enum.UserInputType.Keyboard)
    end
end

local function collectChest(nearestChest)
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(HumanoidRootPart, tweenInfo, {CFrame = nearestChest.CFrame})
    tween:Play()
    tween.Completed:Wait()

    activateProximityPrompt(nearestChest)

    OpenedChests[nearestChest] = true

end

local function handleFarming()
    if _G.IsFarming then
        local unopenedChests = getChests()
        local nearestChest = findNearestChest(unopenedChests)
        
        if nearestChest then
            collectChest(nearestChest)
            repeat
                wait()
            until not Backpack:FindFirstChild(nearestChest.Name)
        end
    else
      return --false
    end
end

while true do
    handleFarming()
    wait(0.1)
end