-- ð© https://www.roblox.com/games/11889621060/The-patience-obby ð©
-- Join discord!!!  https://discord.gg/fVzqJnHKsJ
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function activateHitbox()

    local hitboxParts = {
        "Head",
        "Torso",
        "HumanoidRootPart",
        "UpperTorso",
        "LowerTorso",
        "LeftLeg",
        "RightLeg",
        "LeftArm",
        "RightArm"
    }

    for _, partName in ipairs(hitboxParts) do
        local part = character:FindFirstChild(partName)
        if part then
            if part.CanCollide == false or part.Transparency > 0 then
                part.CanCollide = true
                part.Transparency = 0
                part.Anchored = false
                print("Hitbox activada para " .. partName)
            end
        end
    end
end

activateHitbox()

nuevamente
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    activateHitbox()
end)
-- Join discord!!!  https://discord.gg/fVzqJnHKsJ
-- ð© https://www.roblox.com/games/11889621060/The-patience-obby ð©