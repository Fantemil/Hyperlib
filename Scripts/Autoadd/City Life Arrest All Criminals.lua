local plr = game.Players.LocalPlayer
local plrList = game.Players
local hRp = plr.Character.HumanoidRootPart

for playerIndex, player in pairs (plrList:GetChildren()) do
   
   for itemIndex, item in pairs (player.Backpack:GetChildren()) do
     
      if (item.Name == "Gun" and item:IsA("Tool")) then
         
         if (item.context.Value == "criminal") then
             
            hRp.CFrame = player.Character.HumanoidRootPart.CFrame
            game:GetService("ReplicatedStorage").remoteInterface.jobs.arrestPlayer:InvokeServer(player)
            game:GetService("ReplicatedStorage").remoteInterface.jobs.arrestPlayer:InvokeServer(player)
            game:GetService("ReplicatedStorage").remoteInterface.jobs.arrestPlayer:InvokeServer(player)
            wait()

         end
         
      end
       
   end
   
end