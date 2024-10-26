local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local pad = workspace:FindFirstChild("pad")
if pad then
    local admingiver = pad:FindFirstChild("admingiver")
    if admingiver then
        character:MoveTo(admingiver.Position)
    else
        warn("admingiver pad not found!")
    end
else
    warn("pad model not found in workspace!")
end