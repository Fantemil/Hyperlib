-- trashs#0414 was here
print("autoquests")
getgenv().qtog = true -- toggle which turns it on an off (true/false)

closestmob = function()
   local closestPlayer = nil
   local shortestDistance = math.huge
   
   for i, v in pairs(game:GetService("Workspace").Mobs:GetDescendants()) do
       if v:IsA("Part") and v.Name == "HumanoidRootPart" then
           if v.Parent.Humanoid.Health > 0 then
   
               local magnitude = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
   
               if magnitude < shortestDistance and v.Parent.Name ~= game.Players.LocalPlayer.Name then
                   closestPlayer = v
                   shortestDistance = magnitude
               end
           end
       end
   end
   
   return closestPlayer.Parent or localPlayer
end

while wait(1) do
   if getgenv().qtog == true and closestmob() ~= nil then
       for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui["universal_client_scripts"]["Bird_Ui"].Bill["Detect_Frame"].Main.Holder["Content_Holder"].Quests.Frame2.Holder:GetChildren()) do
           local quest_check = "Defeat "..tostring(closestmob().Name)
           if v.Name == quest_check then
               game:GetService("ReplicatedStorage").Remotes.To_Server.crow_quest_ting:FireServer(quest_check, "Do")
           end
       end
   end
end