local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local folder = workspace:WaitForChild("ToFind")
local replicatedStorage = game:GetService("ReplicatedStorage")
local findTheEvents = replicatedStorage:WaitForChild("FindTheEvents")
local dataResetEvent = findTheEvents:WaitForChild("DataReset")

local function teleportTo(position)
    if character and character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(position)
    end
end

while true do
    local meshParts = folder:GetDescendants()

    for _, part in ipairs(meshParts) do
        if part:IsA("MeshPart") then
            teleportTo(part.Position)
            dataResetEvent:FireServer()
            wait(0.1)
        end
    end
end
