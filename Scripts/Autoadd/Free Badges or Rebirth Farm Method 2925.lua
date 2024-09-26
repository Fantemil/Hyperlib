local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local folder = workspace:WaitForChild("ToFind")
local replicatedStorage = game:GetService("ReplicatedStorage")
local findTheEvents = replicatedStorage:WaitForChild("FindTheEvents")
local dataResetEvent = findTheEvents:WaitForChild("DataReset")

local function teleportFlagToPlayer(flag)
    flag.CFrame = character.HumanoidRootPart.CFrame
end

while true do
    local meshParts = folder:GetDescendants()

    for _, part in ipairs(meshParts) do
        if part:IsA("MeshPart") then
            teleportFlagToPlayer(part)
            dataResetEvent:FireServer()
            wait(0.1)
        end
    end
end
