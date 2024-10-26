local player = game.Players.LocalPlayer
local sphere = workspace:FindFirstChild(player.Name).Sphere
local checkpoints = workspace.Checkpoints
local function teleport()
    for i = 1, 121 do
        local checkpoint = checkpoints:FindFirstChild(tostring(i))
        if checkpoint then
            sphere.CFrame = checkpoint.PrimaryPart.CFrame
            task.wait(0)
        end
    end
end
teleport()