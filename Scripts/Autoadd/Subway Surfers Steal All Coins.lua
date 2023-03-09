while task.wait() do
   for _, v in pairs(workspace:GetChildren()) do
       if v.Name == "Coin" then
           v.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
       end
   end
end