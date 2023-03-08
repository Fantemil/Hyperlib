while true do
 local args = {
  [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Linked Sword")
 }

 game:GetService("ReplicatedStorage").Remotes.Power:FireServer(unpack(args))
 task.wait(0.5)
end