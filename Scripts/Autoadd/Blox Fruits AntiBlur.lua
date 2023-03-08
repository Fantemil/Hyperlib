repeat task.wait() until game:isLoaded()

if tostring(game.PlaceId) ~= "2753915549" and tostring(game.PlaceId) ~= "4442272183" and tostring(game.PlaceId) ~= "7449423635" then
 print("This game is not supported")
 return
end

local Player = game:GetService("Players").LocalPlayer
local Lighting = game:GetService("Lighting")

spawn(function()
 while task.wait() do
     if Player then
            Lighting.Blur.Enabled = false
            Lighting.Blur.Size = 0
            Lighting.ExposureCompensation = 0
            wait(0.5)
        end
 end
end)