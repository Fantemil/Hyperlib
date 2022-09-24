while wait() do
maxstage = 0
for i, v in pairs(game:GetService("Workspace").Checkpoints:GetChildren()) do
  maxstage = maxstage + 1
end
stage = game:GetService("Players").LocalPlayer.leaderstats.Stage.Value
for i = stage, maxstage do
  firetouchinterest(game:GetService("Workspace").Checkpoints[i], game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
  wait()
  firetouchinterest(game:GetService("Workspace").Checkpoints[i], game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
  wait(0.1)
  if (i == maxstage) then
      game:GetService("ReplicatedStorage").Remotes.Rebirth:InvokeServer(5)
      wait(1)
  end
end
end