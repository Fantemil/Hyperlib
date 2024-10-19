local player = game.Players.LocalPlayer
local checkpoints = workspace.WorldMap.Checkpoints
local function teleport()
    local checkpointCount = #checkpoints:GetChildren()
    for i = 1, checkpointCount do
        local checkpoint = checkpoints:FindFirstChild(tostring(i))
        if checkpoint then
            player.Character:SetPrimaryPartCFrame(checkpoint:GetPivot())
            task.wait(0)
        end
    end
end
teleport()