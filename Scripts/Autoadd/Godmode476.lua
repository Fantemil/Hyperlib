while true do wait()
  if game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 then
LastPick = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame wait(0.1)
game:GetService("ReplicatedStorage").RespawnChar:FireServer() wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = LastPick
  end
end