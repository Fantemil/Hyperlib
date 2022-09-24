repeat wait() until game.Players.LocalPlayer
 
m = game.Players.LocalPlayer:GetMouse()
 
m.KeyDown:connect(function(key)
 if key == "0" then --"Shift to run" 0 == shift
  print("Running")
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200 --change "25" to your speed you want
 end
end)
 
m.KeyUp:connect(function(key)
 if key == "0" then
  game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 --change "16" to your speed you want when you stop running
 end
end)