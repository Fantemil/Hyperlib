for i, v in pairs(game.Workspace:GetDescendants()) do
   if string.find(v.Name, "Ragdoll") then
       v:Destroy()
   end
end
game.Workspace.Gravity = math.huge
while task.wait(.2) do
   pcall(
       function()
           for i, v in pairs(game.Players:GetPlayers()) do
               if v.Name == game.Players.LocalPlayer.Name then
               else
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                       game.Players[v.Name].Character.HumanoidRootPart.CFrame * CFrame.new(0, 3, 0)
                   wait(.1)
                   local args = {
                       [1] = game:GetService("Players")[v.Name].Character
                   }

                   game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
               end
           end
       end
   )
end