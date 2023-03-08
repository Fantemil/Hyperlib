for i ,v in pairs(game:GetService("Workspace").Pals:GetDescendants()) do
   if v:IsA("TouchTransmitter") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
   end
end