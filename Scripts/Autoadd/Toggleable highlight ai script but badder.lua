local players = game:GetService("Players")

local highlightConfig = {
FillColor = Color3.new(0, 0, 0),
OutlineColor = Color3.new(1, 0, 0),
OutlineTransparency = 0,
FillTransparency = 0.5,
}

local function createHighlight(player)
local highlight = Instance.new("Highlight")
highlight.Name = player.Name
highlight.Parent = player.Character
for k, v in pairs(highlightConfig) do
highlight[k] = v
end
return highlight
end

local function removeHighlight(player)
local highlight = player.Character:FindFirstChild(player.Name)
if highlight then
highlight:Destroy()
end
end

local function toggleHighlight()
local toggle = not toggle
for _, player in ipairs(players:GetPlayers()) do
if player.Character then
if toggle then
createHighlight(player)
else
removeHighlight(player)
end
end
end
end

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
if input.KeyCode == Enum.KeyCode.F then
toggleHighlight()
end
end)