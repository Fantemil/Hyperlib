 for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
           if v.Name == "Handcuffs" then v.Parent = game:GetService("Players").LocalPlayer.Character end
 end
 while task.wait() do 
       for i= 1, 3 do
                   game:GetService("ReplicatedStorage").Event:FireServer("Eject", game.Players.LocalPlayer)
           end end