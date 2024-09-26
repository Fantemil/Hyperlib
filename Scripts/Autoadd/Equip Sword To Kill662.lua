while task.wait() do
for i=2,#game.Players:GetPlayers() do
    pcall(function()
        v=game.Players:GetPlayers()[i]
        game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"):Activate()
        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle,v.Character.HumanoidRootPart,0)
        firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle,v.Character.HumanoidRootPart,1)
    end)
end
end