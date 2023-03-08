for i,v in pairs(game.Players:GetPlayers()) do
local args = {
   [1] = v.Character
}
game:GetService("ReplicatedStorage").Remotes.CharacterRequestDeath:FireServer(unpack(args))
end