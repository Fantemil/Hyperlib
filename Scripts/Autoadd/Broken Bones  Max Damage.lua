getgenv().zaza = game.Workspace.Gravity
getgenv().Mouse = game.Players.LocalPlayer:GetMouse()
getgenv().ziga = true
Mouse.KeyDown:connect(function(key)
if key == "z" then
if ziga == true then
getgenv().ziga = false
game.Workspace.Gravity = 1000
else
   getgenv().ziga = true
  game.Workspace.Gravity = zaza
end
end
end)