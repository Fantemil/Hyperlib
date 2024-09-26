local targetCFrame = CFrame.new(31.9999943, 223.288376, 142.485474, -1, 0, 0, 0, 1, 0, 0, 0, -1)

local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local teleportButton = Instance.new("TextButton")
teleportButton.Name = "TeleportButton"
teleportButton.Size = UDim2.new(0, 200, 0, 50)  -- Adjust size as needed
teleportButton.Position = UDim2.new(0.5, -100, 0.8, -25)  -- Position in the center bottom of the screen
teleportButton.Text = "Teleport"
teleportButton.TextSize = 24
teleportButton.Parent = gui

local function teleportToTarget()
    local localPlayer = game.Players.LocalPlayer
    local character = localPlayer.Character
    if character then
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        humanoidRootPart.CFrame = targetCFrame
    end
end

teleportButton.MouseButton1Click:Connect(teleportToTarget)