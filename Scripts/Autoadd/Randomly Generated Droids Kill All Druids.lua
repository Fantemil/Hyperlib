getgenv().killDroids = true

while task.wait() do
   if getgenv().killDroids then
     for i, v in pairs(game:GetService("Workspace").Room.Enemies:GetDescendants()) do
           if v:FindFirstChild("Enemy") then
               v.Enemy.Health = 0
           end
       end
   end
   task.wait()
end