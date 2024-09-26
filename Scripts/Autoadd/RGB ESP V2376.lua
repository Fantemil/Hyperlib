-- RGB ESP Highlight Script for Solara

-- function to create the ESP highlight
local function createESP(character)
    if not character then
        warn("no worky :(")
        return
    end

    -- creates a highlight instance
    local highlight = Instance.new("Highlight")
    highlight.Name = "ESP"
    highlight.Adornee = character
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0.2
    highlight.Parent = game.CoreGui

    -- function to cycle rgb colors
    local function rgbCycle()
        local hue = 0
        while true do
            hue = hue + 1
            if hue > 360 then hue = 0 end
            local color = Color3.fromHSV(hue / 360, 1, 1)
            highlight.FillColor = color
            highlight.OutlineColor = color
            wait(0.1)
        end
    end

    -- spawn rgb cycle
    spawn(rgbCycle)
end

-- highlight every player in the game (even you)
local function highlightPlayers()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player.Character then
            createESP(player.Character)
        end
    end
end

-- highlighting skibidi
highlightPlayers()

-- waits for new players joining game
game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        createESP(character)
    end)
end)

print("script worky :)")