local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoKillGui"
screenGui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0.5, -100, 0.5, -50)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.Parent = screenGui

frame.Active = true
frame.Draggable = true

local killButton = Instance.new("TextButton")
killButton.Size = UDim2.new(0, 180, 0, 50)
killButton.Position = UDim2.new(0.5, -90, 0.5, -25)
killButton.Text = "Auto Kill"
killButton.TextColor3 = Color3.fromRGB(255, 255, 255)
killButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
killButton.Parent = frame

local function autoKill()
    
    for _, v in ipairs(game.Players:GetChildren()) do
  
        local args = {
            [1] = {
                [1] = game.Players.LocalPlayer
            },
            [2] = v,
            [3] = v.Character.Humanoid,
            [4] = 999  -- Adjust the damage value as needed
        }

game:GetService("ReplicatedStorage").Remotes.DamagePlayer:FireServer(unpack(args))
    end
end

killButton.MouseButton1Click:Connect(autoKill)