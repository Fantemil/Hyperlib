local players = game:GetService("Players")
local localPlayer = players.LocalPlayer

local function highlightCharacter(character)
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 5)
    if humanoidRootPart then
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red highlight color
        highlight.OutlineColor = Color3.fromRGB(0, 0, 0) -- Black outline
        highlight.Parent = character
    end
end

local function onCharacterAdded(character)
    highlightCharacter(character)
end

local function onPlayerAdded(newPlayer)
    if newPlayer ~= localPlayer then
        newPlayer.CharacterAdded:Connect(function(character)
            onCharacterAdded(character)
        end)

        -- If the character is already loaded for players
        if newPlayer.Character then
            onCharacterAdded(newPlayer.Character)
        end
    end
end

-- Apply to all existing players in the game
for _, player in pairs(players:GetPlayers()) do
    onPlayerAdded(player)
end

-- Handle any new players who join the game
players.PlayerAdded:Connect(onPlayerAdded)
