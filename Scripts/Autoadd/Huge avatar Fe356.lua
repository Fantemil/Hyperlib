local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local character = localPlayer.Character
local humanoid = character and character:FindFirstChild("Humanoid")
local potionRemoteEvent = character and character:FindFirstChild("Growth Potion") and character:FindFirstChild("Growth Potion").PotionRemoteEvent

if humanoid and potionRemoteEvent then
    local args = {
        [1] = humanoid
    }

    for i = 1, 58 do
        potionRemoteEvent:FireServer(unpack(args))
    end
else
    warn("Could not find Humanoid or PotionRemoteEvent")
end
