while task.wait() do
   for i = 1,30 do
       game:GetService("ReplicatedStorage").BeatLevel:FireServer(0, "Level 2", "Normal", false)
   end
   game:GetService("ReplicatedStorage").SetLevel:FireServer(0)
end