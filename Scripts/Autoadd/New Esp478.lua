-- Get all players in the game
local players = game:GetService("Players"):GetPlayers()

-- Loop through each player and highlight them
for _, player in ipairs(players) do
    -- Create a highlight effect for the player
    local highlight = Instance.new("SelectionBox")
    highlight.Adornee = player.Character
    highlight.Parent = player.Character

    -- Set the color and transparency of the highlight
    highlight.Color3 = Color3.new(1, 0, 0) -- Red
    highlight.Transparency = 0.5

    -- Create a BillboardGui to display the player's username
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = player.Character.Head
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
    billboardGui.Parent = player.Character.Head

    -- Create a TextLabel to show the username
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = player.Name
    textLabel.TextColor3 = Color3.new(167, 67, 0) -- Red
    textLabel.BackgroundTransparency = 1
    textLabel.Parent = billboardGui
end