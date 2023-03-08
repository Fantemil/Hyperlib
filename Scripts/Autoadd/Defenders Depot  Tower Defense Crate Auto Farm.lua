game:GetService("Players").LocalPlayer:WaitForChild("Info"):WaitForChild("Gamepasses"):WaitForChild("Auto").Value = true
local player = game.Players.LocalPlayer
for i,p in pairs(game.Workspace:GetChildren()) do
  if p.Name == "Crate" then
      p.CanCollide = false
      p.Position = player.Character.HumanoidRootPart.Position
  end
end

workspace.ChildAdded:Connect(function(child)
if child.Name == "Crate" then
      child.CanCollide = false
      child.Position = player.Character.HumanoidRootPart.Position
  end
end)

spawn(function()
while wait(15) do
for i,p in pairs(game.Workspace:GetChildren()) do
  if p.Name == "Crate" then
      p.CanCollide = false
      p.Position = player.Character.HumanoidRootPart.Position
end
end
end
end)