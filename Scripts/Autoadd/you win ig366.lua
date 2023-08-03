wait (0.2)
local Event = game:GetService("ReplicatedStorage").ResetNest
Event:FireServer()
wait (1)
local localPlayer = game.Players.LocalPlayer
local workspaceNests = game:GetService("Workspace").Nests:GetChildren()
local teleportInterval = 0.1  -- Adjust the interval (in seconds) between each teleport

local function teleportPlayerToPart(part)
    if part and part:IsA("BasePart") then
        local character = localPlayer.Character
        if character then
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
            if humanoidRootPart then
                humanoidRootPart.CFrame = part.CFrame
            end
        end
    end
end

for _, part in ipairs(workspaceNests) do
    teleportPlayerToPart(part)
    wait(teleportInterval)
end

