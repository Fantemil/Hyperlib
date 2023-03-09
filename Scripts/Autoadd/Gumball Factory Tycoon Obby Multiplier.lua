for i,v in pairs(game.Workspace.Obbies:GetChildren()) do
   if v:FindFirstChild("Win") then
       wait(2)
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Win,0)
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Win,1)
   end
end