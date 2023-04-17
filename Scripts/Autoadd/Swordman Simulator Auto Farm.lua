while task.wait() do
    pcall(function()
        for i=1,100 do
            game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Animation.Slash:FireServer()
        end
    end)
end
 