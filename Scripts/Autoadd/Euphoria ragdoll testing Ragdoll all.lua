for _,human in pairs(game.Players:GetPlayers()) do
game:GetService("Players").LocalPlayer.Character.activeragdoll.rd:FireServer(human.Character.activeragdoll.V)
end