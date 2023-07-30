local player = game.Players.LocalPlayer

-- Set up ESP box
local box = Instance.new("BoxHandleAdornment")
box.Size = Vector3.new(4, 6, 4)
box.Adornee = player.Character.HumanoidRootPart
box.AlwaysOnTop = true
box.ZIndex = 5
box.Color3 = Color3.fromRGB(255, 0, 0)
box.Transparency = 0.5

-- Set up toggle function
local toggleESP = false
local function toggleBoxes()
    toggleESP = not toggleESP
    for _, otherPlayer in ipairs(game.Players:GetPlayers()) do
        if otherPlayer ~= player then
            local otherBox = otherPlayer.Character:FindFirstChild("ESPBox")
            if toggleESP then
                if not otherBox then
                    otherBox = box:Clone()
                    otherBox.Name = "ESPBox"
                    otherBox.Adornee = otherPlayer.Character.HumanoidRootPart
                    otherBox.Parent = otherPlayer.Character
                end
            else
                if otherBox then
                    otherBox:Destroy()
                end
            end
        end
    end
end

-- Connect toggle function to key press
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode.E and not gameProcessed then
        toggleBoxes()
    end
end)
