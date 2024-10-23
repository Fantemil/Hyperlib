local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local rootPart = character:WaitForChild("HumanoidRootPart")
local playerGui = player:WaitForChild("PlayerGui")

-- Create the ScreenGui to hold all UI elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ActionMenu"
screenGui.Parent = playerGui

-- Function to create a button
local function createButton(name, position, text)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Size = UDim2.new(0, 200, 0, 50)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Font = Enum.Font.SourceSansBold
    button.TextScaled = true
    button.Text = text
    button.Parent = screenGui
    return button
end

-- Create buttons with different actions
local explodeButton = createButton("ExplodeButton", UDim2.new(0.5, -100, 0.3, 0), "Explode")
local swimButton = createButton("SwimButton", UDim2.new(0.5, -100, 0.4, 0), "Swim")
local killButton = createButton("KillButton", UDim2.new(0.5, -100, 0.5, 0), "Kill")
local explodeMillionButton = createButton("ExplodeMillionButton", UDim2.new(0.5, -100, 0.6, 0), "Explode 1,000,000 times")
local voidButton = createButton("VoidButton", UDim2.new(0.5, -100, 0.7, 0), "Void")

-- Action for "Explode" button
explodeButton.MouseButton1Click:Connect(function()
    local explosion = Instance.new("Explosion")
    explosion.Position = rootPart.Position
    explosion.BlastRadius = 10
    explosion.BlastPressure = 50000
    explosion.Parent = workspace
    humanoid:TakeDamage(100) -- Damages the player to simulate explosion
end)

-- Action for "Swim in Air" button
swimButton.MouseButton1Click:Connect(function()
    humanoid.PlatformStand = true -- Disable normal movement to simulate floating
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 20, 0) -- Moves the player up (like swimming in the air)
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Parent = rootPart
    
    -- Make the player "swim" in the air for 5 seconds
    wait(5)
    bodyVelocity:Destroy()
    humanoid.PlatformStand = false -- Return normal movement
end)

-- Action for "Kill" button
killButton.MouseButton1Click:Connect(function()
    humanoid.Health = 0 -- Instantly kills the player
end)

-- Action for "Explode 1,000,000 times" button
explodeMillionButton.MouseButton1Click:Connect(function()
    for i = 1, 1000000 do
        local explosion = Instance.new("Explosion")
        explosion.Position = rootPart.Position + Vector3.new(math.random(-5, 5), 0, math.random(-5, 5)) -- Randomize explosions around player
        explosion.BlastRadius = 5
        explosion.BlastPressure = 10000
        explosion.Parent = workspace
        wait(0.0001) -- Short wait between explosions to simulate rapid effect
    end
end)

-- Action for "Void" button (make player fall into the void)
voidButton.MouseButton1Click:Connect(function()
    rootPart.CFrame = CFrame.new(0, -5000, 0) -- Teleports player into the void
end)
