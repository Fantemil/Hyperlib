max_player_distance = 200
distance = 3
current_player = nil
aimbot = true

while task.wait() do
   
   if current_player == nil then
       for i, v in pairs(game:GetService("Players"):GetPlayers()) do
           
           local character = v.Character
           local local_player = game.Players.LocalPlayer
           local local_character = local_player.Character
           
           if character and local_character and local_character ~= character then
               
               local root = character:FindFirstChild("HumanoidRootPart")  
               local local_root = local_character:FindFirstChild("HumanoidRootPart")
               
               if root and local_root and root.Position.Z <= 3500 then

                   if (root.Position - local_root.Position).Magnitude <= max_player_distance then
                       local humanoid = character:FindFirstChild("Humanoid")
                       
                       if humanoid then
                           
                           if humanoid.Health > 0 then
                               
                               current_player = character
                                       
                           end
                       end
                   end
               end
           end
       end
   else
       local local_player = game.Players.LocalPlayer
       local local_character = local_player.Character
       
       if local_character then
           
           local humanoid = current_player:FindFirstChild("Humanoid")
               
           if humanoid then
                   
               if humanoid.Health > 0 then
                       
                   local local_root = local_character:FindFirstChild("HumanoidRootPart")
                   local enemy_root = current_player:FindFirstChild("HumanoidRootPart")
                   
                   if local_root and enemy_root then
           
                       local_root.CFrame = enemy_root.CFrame * CFrame.new(0, 0, distance)
                       
                       
                       if aimbot then
                           game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, Vector3.new(enemy_root.CFrame.Position.X, enemy_root.CFrame.Position.Y, enemy_root.CFrame.Position.Z))
                           local_root.CFrame = CFrame.new(local_root.Position, Vector3.new(enemy_root.CFrame.Position.X, enemy_root.CFrame.Position.Y, enemy_root.CFrame.Position.Z))
                       end
                   end
               else
                   current_player = nil
               end
           end
       end
   end
end