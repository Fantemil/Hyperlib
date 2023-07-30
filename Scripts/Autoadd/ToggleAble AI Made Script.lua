local toggle = false
local highlight

local function toggleHighlight()
    toggle = not toggle
    if toggle then
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character then
                highlight = Instance.new("Highlight")
                highlight.Name = player.Name
                highlight.Parent = player.Character
                highlight.FillColor = Color3.new(0, 0, 0)
                highlight.OutlineColor = Color3.new(255, 0, 0)
                highlight.OutlineTransparency = 0
                highlight.FillTransparency = 0.5
            end
        end
    else
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Character then
                highlight = player.Character:FindFirstChild(player.Name)
                if highlight then
                    highlight:Destroy()
                end
            end
        end
    end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.F then
        toggleHighlight()
    end
end)