for i,v in pairs(game.Players:GetPlayers()) do
   if v.Name ~= game.Players.LocalPlayer.Name then
       while wait() do
           game:GetService("Players").LocalPlayer.Backpack["Breach Charge"].RemoteEvent:FireServer(v.Character.HumanoidRootPart.CFrame, v.Character.HumanoidRootPart)
       end
   end
end