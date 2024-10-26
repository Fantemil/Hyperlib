local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local function simulateTouch(part)
    if part and part:IsA("BasePart") then
        firetouchinterest(humanoidRootPart, part, 0)
        wait(0.1)
        firetouchinterest(humanoidRootPart, part, 1)
    end
end
local function simulateClick(clickDetector)
    if clickDetector and clickDetector:IsA("ClickDetector") then
        clickDetector:FireServer()
    end
end
for _, instance in pairs(game:GetDescendants()) do
    if instance:IsA("BasePart") then
        if instance:FindFirstChildOfClass("TouchTransmitter") then
            simulateTouch(instance)
        end
        local clickDetector = instance:FindFirstChildOfClass("ClickDetector")
        if clickDetector then
            simulateClick(clickDetector)
        end
    end
end