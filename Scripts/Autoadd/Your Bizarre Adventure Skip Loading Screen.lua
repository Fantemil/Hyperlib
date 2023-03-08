repeat wait() 
until game:IsLoaded()

repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen1") == nil
game.Players.LocalPlayer.PlayerStats.Prestige.Value = "0"
for i, v in next, {"MouseButton1Click", "MouseButton1Down", "Activated"} do firesignal(game.Players.LocalPlayer.PlayerGui.LoadingScreen.Play[v]) end