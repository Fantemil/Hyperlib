local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local teleportButton = Instance.new("TextButton")
teleportButton.Size = UDim2.new(0, 100, 0, 100)
teleportButton.Position = UDim2.new(0, 10, 0.5, -50)
teleportButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
teleportButton.Text = "Anywhere But Here!"
teleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
teleportButton.Font = Enum.Font.SourceSansBold
teleportButton.TextScaled = true
teleportButton.BackgroundTransparency = 0
teleportButton.Parent = screenGui
teleportButton.BorderSizePixel = 0
teleportButton.TextWrapped = true

teleportButton.ClipsDescendants = true
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(1, 0)
corner.Parent = teleportButton

teleportButton.MouseButton1Click:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local mapSize = Vector3.new(500, 500, 500)
    local randomPosition = Vector3.new(
        math.random(-mapSize.X / 2, mapSize.X / 2),
        100,
        math.random(-mapSize.Z / 2, mapSize.Z / 2)
    )

    local ray = Ray.new(randomPosition, Vector3.new(0, -1000, 0))
    local hitPart, hitPosition = workspace:FindPartOnRay(ray)

    if hitPart then
        character:SetPrimaryPartCFrame(CFrame.new(hitPosition + Vector3.new(0, 5, 0)))
    else
        print("No valid ground found, teleportation failed.")
    end
end)
