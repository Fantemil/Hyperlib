local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player.PlayerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.8, -50)
frame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
frame.Parent = gui

local ascendButton = Instance.new("TextButton")
ascendButton.Text = "Ascend"
ascendButton.Size = UDim2.new(0, 80, 0, 40)
ascendButton.Position = UDim2.new(0.1, 0, 0.5, -20)
ascendButton.Parent = frame

local unAscendButton = Instance.new("TextButton")
unAscendButton.Text = "UnAscend"
unAscendButton.Size = UDim2.new(0, 80, 0, 40)
unAscendButton.Position = UDim2.new(0.6, 0, 0.5, -20)
unAscendButton.Parent = frame

local ascendVelocity = Vector3.new(0, 2, 0)
local bodyVelocity

ascendButton.MouseButton1Click:Connect(function()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.Velocity = ascendVelocity
            bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0) -- Biarkan kekuatan vertikal tak terbatas
            bodyVelocity.Parent = character.HumanoidRootPart
        end
    end
end)

unAscendButton.MouseButton1Click:Connect(function()
    if bodyVelocity then
        bodyVelocity:Destroy()
    end
end)