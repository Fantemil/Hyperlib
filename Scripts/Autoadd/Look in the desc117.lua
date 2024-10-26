local Players = game:GetService("Players")
local rs = game:GetService("RunService")
local w = game:GetService("Workspace")
local ts = game:GetService("TweenService")

local sT= 0.5 

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local map = w:WaitForChild("Map")
local iS = map:WaitForChild("itemSpawnner")
local bC = iS:WaitForChild("Box")

local function goTo(targetPosition, callback)
    local slideInfo = TweenInfo.new(sT, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
    local goal = {CFrame = CFrame.new(targetPosition)}
    local tween = ts:Create(hrp, slideInfo, goal)

    tween:Play()
    tween.Completed:Connect(function()
        if callback then
            callback()
        end
    end)
end

local function interact(proximityPrompt)
    if proximityPrompt then
        proximityPrompt:InputHoldBegin()
    end
end

local function moveTo(basePart)
    local proximityPrompt = basePart:FindFirstChildOfClass("ProximityPrompt")
    if not proximityPrompt then return end

    local distance = (hrp.Position - basePart.Position).Magnitude
    if distance then
        hrp.CFrame = basePart.CFrame
        interact(proximityPrompt)
    else
        goTo(basePart.Position, function()
            interact(proximityPrompt)
        end)
    end
end

local function processBC()
    for _, part in ipairs(bC:GetDescendants()) do
        if part:IsA("Part") and part.Name == "Part" then
            for _, model in ipairs(part:GetDescendants()) do
                if model:IsA("Model") and model.Name == "Box" then
                    for _, basePart in ipairs(model:GetDescendants()) do
                        if basePart:IsA("MeshPart") and basePart.Name == "Base" then
                            moveTo(basePart)
                        end
                    end
                end
            end
        end
    end
end

processBC()