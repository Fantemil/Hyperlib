getgenv().xp = true
while getgenv().xp == true do
   task.wait()
local args = {
   [1] = workspace.World.SpotifyIsland.MusicGames.CaveMusicGame:FindFirstChild("Music Cave"):FindFirstChild("Buttons Back").button,
   [2] = "Lofi One Shots MeloSax 17"
}

game:GetService("ReplicatedStorage").PlaySoungRemote_SpotifySync:FireServer(unpack(args))

end