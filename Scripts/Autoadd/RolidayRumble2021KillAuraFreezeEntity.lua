while wait(.5) do
   
   for i, v in pairs(game.workspac.Entities:GetChildren()) do
       if v:IsA("Model") then
           v.HumanoidRootPart.Anchored = true
       end
   end
   
 -- If you find another Entity, just change the name on the remote.  
game:GetService("ReplicatedStorage")._NETWORK.EntityDamaged:FireServer(workspace.Entities.skull, game:GetService("Players").LocalPlayer.Character, "playerPunch1")
game:GetService("ReplicatedStorage")._NETWORK.EntityDamaged:FireServer(workspace.Entities.skull, game:GetService("Players").LocalPlayer.Character, "playerPunch2")
game:GetService("ReplicatedStorage")._NETWORK.EntityDamaged:FireServer(workspace.Entities.muscles, game:GetService("Players").LocalPlayer.Character, "playerPunch1")
game:GetService("ReplicatedStorage")._NETWORK.EntityDamaged:FireServer(workspace.Entities.muscles, game:GetService("Players").LocalPlayer.Character, "playerPunch2")
end