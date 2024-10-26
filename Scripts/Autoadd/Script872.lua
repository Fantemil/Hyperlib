local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local adminobbyFolder = workspace:FindFirstChild("adminobby")
if adminobbyFolder then
    local pad = adminobbyFolder:FindFirstChild("pad")
    if pad then
        local admingiver = pad:FindFirstChild("admingiver")
        if admingiver then
            character:MoveTo(admingiver.Position)
        else
            warn("admingiver part not found in pad!")
        end
    else
        warn("pad model not found in adminobby folder!")
    end
else
    warn("adminobby folder not found in workspace!")
end