local function createESPForEgg(egg)
    local ESPBillboard = Instance.new("BillboardGui")
    ESPBillboard.Name = "ESPBillboard"
    ESPBillboard.AlwaysOnTop = true
    ESPBillboard.Size = UDim2.new(2, 0, 2, 0)
    ESPBillboard.StudsOffset = Vector3.new(0, 3, 0)

    local ESPLabel = Instance.new("TextLabel")
    ESPLabel.Parent = ESPBillboard
    ESPLabel.BackgroundTransparency = 1
    ESPLabel.Size = UDim2.new(10, 0, 10, 0)
    ESPLabel.Text = "Egg"
    ESPLabel.TextColor3 = Color3.new(1, 0, 0)
    ESPLabel.TextScaled = true
    ESPLabel.TextSize = 125

    ESPBillboard.Parent = egg
end

local eggsFolder = game.Workspace.EggEvent.eggs
if eggsFolder then
    local eggs = eggsFolder:GetChildren()
    for _, egg in ipairs(eggs) do
        if egg:IsA("Model") then
            createESPForEgg(egg)
        end
    end
end