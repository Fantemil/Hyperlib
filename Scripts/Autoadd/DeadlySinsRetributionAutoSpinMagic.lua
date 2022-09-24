_G.AutoMagic = true
while _G.AutoMagic do wait()

game:GetService("Players").LocalPlayer.PlayerGui.MainUI.LocalScript.Magic1Spin:FireServer(game:GetService("Players").LocalPlayer.PlayerGui.MainUI.Contents.RaceMagic)
wait(0.1)

if game.Players.LocalPlayer.Character.Data.Magic.Value == "Sunshine" or "Infinity" or "Babylon" then
_G.AutoMagic = false
  end
end