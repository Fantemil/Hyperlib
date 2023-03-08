local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input, e)
  if e then return end
  if input.KeyCode == Enum.KeyCode.E then
game.ReplicatedStorage.events.action:FireServer("glide")
  end
end)