getgenv().oneshot = true

while oneshot do task.wait()
   pcall( function()
       for i,v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
           if v:IsA("Model") and v:FindFirstChildOfClass("Humanoid") and game.Players.LocalPlayer:DistanceFromCharacter(v.PrimaryPart.Position) < 21 and v:FindFirstChildOfClass("Humanoid").Health > 0 then
               local MobHealth = v:FindFirstChildOfClass("Humanoid").Health
               local Result = 20 * v:FindFirstChildOfClass("Humanoid").MaxHealth / 100
               local OneTapWhen = v:FindFirstChildOfClass("Humanoid").MaxHealth - Result

               if isnetworkowner(v.PrimaryPart) then
                   v.PrimaryPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 6 + Vector3.new(0, 2, 0)
               end

               if MobHealth < OneTapWhen and isnetworkowner(v.PrimaryPart) then
                   v.Head:Destroy()
                   v.Humanoid.Health = 0
               end

           end
       end
   end)
end