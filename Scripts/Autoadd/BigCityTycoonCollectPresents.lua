spawn(function()
   while task.wait() do
       for i,v in pairs(game:GetService("Workspace")["Holiday Presents"]:GetDescendants()) do
           if v.Name == "Primary" then
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
               task.wait(.5)
           end
       end
   end
end)