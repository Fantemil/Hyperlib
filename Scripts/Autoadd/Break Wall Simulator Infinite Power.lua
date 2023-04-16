local playersService = game:GetService("Players")
local localPlayer = playersService.LocalPlayer

if localPlayer and localPlayer:FindFirstChild("speed") then
    localPlayer.speed.Value = math.huge
end

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
Library.DefaultColor = Color3.fromRGB(255,0,0)

Library:Notification({
 Text = "You can one shot every wall I guess that is cool",
 Duration = 5
})