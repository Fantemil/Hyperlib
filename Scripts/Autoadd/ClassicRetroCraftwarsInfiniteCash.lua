cashy = 80000000
game.ReplicatedStorage.MainControl:InvokeServer({command = "setvalue"; instance = game.Players.LocalPlayer.realstats.Cash; value= cashy})
while game: service"RunService".RenderStepped:wait() do
cashy = cashy + 800000000
game.ReplicatedStorage.MainControl:InvokeServer({command = "setvalue"; instance = game.Players.LocalPlayer.realstats.Cash; value= cashy})
end