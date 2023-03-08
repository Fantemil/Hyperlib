for _,v in pairs(game:GetService("Workspace").Environment:GetDescendants()) do
 if v.Name == "Sign" then
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
   firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
 end;
end;