while wait(0.1) do
   for i,v in pairs(workspace.Wins:GetChildren()) do
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Touch, 0)
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Touch, 1)
    end 
end