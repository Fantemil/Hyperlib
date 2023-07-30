local hotkey = "q" -- toggle key
local mouse = game.Players.LocalPlayer:GetMouse()


mouse.KeyDown:Connect(function(key)
if key == hotkey then
if getgenv().DaHoodSettings.SilentAim == true then
 getgenv().DaHoodSettings.SilentAim = false
else
getgenv().DaHoodSettings.SilentAim = true
end
end
end)

loadstring(game:HttpGet("https://pastebin.com/raw/zVeEZTs6",true))()
DaHoodSettings.Prediction = 0.169 -- lower for lower ping and higher for higher ping.
Aiming.FOV = 9 -- size of silent aim
Aiming.FOVSides = 25 -- how smooth silent aim circle is
Aiming.HitChance = 100 
Aiming.ShowFOV = false

 getgenv().AimlockKey = "c" -- aimbot toggle
 getgenv().AimPart = "Head" -- UpperTorso, LowerTorso, HumanoidRootPart, Head
 getgenv().PredictionVelocity = 6.612 -- aimbot prediction.
 getgenv().SmoothnessAmount = 0.01 -- dont go over 0.01 to look legit