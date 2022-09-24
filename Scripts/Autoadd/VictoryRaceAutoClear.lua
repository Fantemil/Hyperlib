while task.wait() do
for _,v in pairs(workspace:GetDescendants()) do
  if v:IsA("BasePart") and v.Name == "Win" then
  local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
  root.CFrame = v.CFrame
  task.wait()
  end
end
end