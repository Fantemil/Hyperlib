if getgenv().Safe then getgenv().Safe = false
else getgenv().Safe = true end
while getgenv().Safe do
 for i, v in pairs(game:GetService("Workspace").Stairs:GetChildren()) do
  v.CanCollide = true
  v.Transparency = 0
 end
 task.wait()
end