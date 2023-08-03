local mouse = game.Players.LocalPlayer:GetMouse()
function Light()
    player = game.Players.LocalPlayer
    playerChar = player.Character
    playerLight = playerChar.Torso:FindFirstChild("Light")
    if playerLight then
        playerLight:Destroy()
    else
        light = Instance.new("SurfaceLight",playerChar:FindFirstChild("Torso"))
        light.Name = "Light"
        light.Range = 11 -- Change to distance ofthe Light.
        light.Brightness = 11 -- Change to how much.
        light.Shadows = false -- Change it to True/False.

        
        local play = Instance.new("Sound",playerChar:FindFirstChild("Head"))
        play.SoundId = "http://www.roblox.com/asset/?id=198914875"
        play:Play()
        
    end
end
mouse.KeyDown:connect(function(key)
key = key:lower()
if key == "f" then
    Light()
end
end)