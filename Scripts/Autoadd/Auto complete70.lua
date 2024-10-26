local player = game.Players.LocalPlayer
local character = player.Character
local humanoid = character:WaitForChild("Humanoid")
local currentStage = player.leaderstats.Stage.Value

local checkpoints = workspace.Checkpoints
for i = currentStage, 241 do
    local checkpoint = checkpoints:FindFirstChild(tostring(i))
    if checkpoint then
        character.HumanoidRootPart.CFrame = checkpoint.Primary.CFrame
        task.wait(0.1)
    end
end