for _,v in pairs(game.Players:GetPlayers()) do
    game.ReplicatedStorage.Events.Tools.ChangeParent:FireServer(v.Character.Head, nil)
end