_G.AutoRace = true
while _G.AutoRace do wait()

game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LocalScript.RaceSpin:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Contents.RaceMagic)
wait(0.1)

if game.Players.LocalPlayer.Character.Data.Race.Value == "Curse" or "Royal Demon" then
_G.AutoRace = false
  end
end