local player = game.Players.LocalPlayer

local function makeHeadInvisible()
    local character = player.Character
    if not character then
        -- Wait for the character to load
        player.CharacterAdded:Wait()
        character = player.Character
    end

    local head = character:FindFirstChild("Head")
    if head then
        -- Set the head's transparency to 1 to make it invisible
        head.Transparency = 1
        
        -- Set the head's face to be invisible
        for _, part in pairs(head:GetChildren()) do
            if part:IsA("Decal") then
                part.Transparency = 1
            end
        end
    end
end

makeHeadInvisible()