local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k:lower() == "t" then
game.Players.LocalPlayer.isShiftlock.Value = not game.Players.LocalPlayer.isShiftlock.Value
end
end)