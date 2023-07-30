local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
 
mouse.KeyDown:connect(function(key)
    if key == "f" then
        player.Character.Humanoid:ChangeState("Flying")
    end
end)
 
mouse.KeyUp:connect(function(key)
    if key == "f" then
        player.Character.Humanoid:ChangeState("Freefall")
    end
end)
