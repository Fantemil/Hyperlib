if game:GetService("Workspace").Checkpoints:FindFirstChild(tostring(game:GetService("Players").LocalPlayer.Stage.Value + 1)) then
 firetouchinterest(game:GetService("Players").LocalPlayer.Character.Sphere, game:GetService("Workspace").Checkpoints[tostring(game:GetService("Players").LocalPlayer.Stage.Value + 1)].Hitbox, 0)
 firetouchinterest(game:GetService("Players").LocalPlayer.Character.Sphere, game:GetService("Workspace").Checkpoints[tostring(game:GetService("Players").LocalPlayer.Stage.Value + 1)].Hitbox, 1)
end