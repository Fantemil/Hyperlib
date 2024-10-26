local Players = game:GetService("Players")

local function createLabel(character, text, textColor)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "StatusLabel"
    billboardGui.Adornee = character:FindFirstChild("Head")
    billboardGui.Size = UDim2.new(0, 100, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 2, 0)
    billboardGui.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = text
    textLabel.TextColor3 = textColor
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = billboardGui

    billboardGui.Parent = character
end

local function checkPlayerForStatus(player)
    local boolFolder = player:FindFirstChild("boolFolder")
    if boolFolder then
        local isSpy = boolFolder:FindFirstChild("isSpy")
        if isSpy and isSpy:IsA("BoolValue") then
            if player.Character and player.Character:FindFirstChild("Head") then
                local existingLabel = player.Character:FindFirstChild("StatusLabel")
                if existingLabel then
                    existingLabel:Destroy()
                end
                if isSpy.Value then
                    createLabel(player.Character, "Spy", Color3.new(1, 0, 0))
                else
                    createLabel(player.Character, "Innocent", Color3.new(0, 1, 0))
                end
            end
        end
    end
end

local function checkAllPlayers()
    for _, player in pairs(Players:GetPlayers()) do
        checkPlayerForStatus(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        checkPlayerForStatus(player)
    end)
end)

while true do
    checkAllPlayers()
    wait(2)
end
