local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local checkpointPart = game.Workspace.Stages["END"]["The End Obby..!!"].Checkpoint

if checkpointPart then
    -- Set the position to be slightly above the Checkpoint part
    local teleportPosition = checkpointPart.Position + Vector3.new(0, checkpointPart.Size.Y / 2 + 2, 0)
    character:SetPrimaryPartCFrame(CFrame.new(teleportPosition))
else
    warn("Checkpoint part not found!")
end