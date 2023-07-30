for i = 1, #workspace.Checkpoints:GetChildren() do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Checkpoints[i].CFrame
i=i+1
local waitTime = math.random(10, 110) / 100
task.wait(waitTime)
end