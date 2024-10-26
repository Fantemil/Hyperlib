-- Rainbow ESP Script for Roblox
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService("RunService")

-- Function to create rainbow color
local function rainbowColor()
    local time = tick() * 3
    return Color3.new(math.sin(time), math.sin(time + 2), math.sin(time + 4))
end

-- Function to create ESP outline
local function createESP(player)
    local highlight = Instance.new("Highlight")
    highlight.FillColor = Color3.new(1, 1, 1) -- Optional: set fill color (white)
    highlight.OutlineColor = rainbowColor() -- Set outline color to rainbow
    highlight.OutlineTransparency = 0 -- Fully visible outline
    highlight.Parent = player.Character or game.Workspace

    -- Update ESP outline when character spawns
    player.CharacterAdded:Connect(function(character)
        highlight.Parent = character
    end)

    -- Update rainbow color continuously
    RunService.RenderStepped:Connect(function()
        highlight.OutlineColor = rainbowColor()
    end)
end

-- Loop through players and create ESP for each
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer and player.Character then
        createESP(player)
    end
end

-- Update ESP whenever a new player joins
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Wait() -- Wait for character to load
    createESP(player)
end)
