local fall_dmg = game:GetService("Players").LocalPlayer:FindFirstChild("RemoteEvent")
local nan = 0/0

if fall_dmg then
   fall_dmg.FireServer(fall_dmg, "FallDamage", nan)
end