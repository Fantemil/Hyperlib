local player = game.Players.LocalPlayer
local character = player.Character

local function teleportToPart(part)
    if part then
        character:SetPrimaryPartCFrame(part.CFrame)
    end
end

local function findAndTeleportToNumberedPart()
    local parts = workspace:GetDescendants()
    for _, part in ipairs(parts) do
        if part:IsA("BasePart") and tonumber(part.Name) then
            teleportToPart(part)
            wait(0.5)  -- Wait for 0.5 seconds before teleporting to the next part
        end
    end
end

findAndTeleportToNumberedPart()