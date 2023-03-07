local lvl = game:GetService("Players").LocalPlayer.Stage
while lvl.Value < 26 do
 firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, game:GetService("Workspace")["Checkpoint "..lvl.Value + 1])
 task.wait()
end
game:GetService("Players").LocalPlayer.Character.Humanoid.Health = 0