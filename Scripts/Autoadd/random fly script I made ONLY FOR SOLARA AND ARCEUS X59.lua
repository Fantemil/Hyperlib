local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local flyEnabled = false
local speed = 50
local bodyVelocity

local function fly()
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, speed, 0)
    bodyVelocity.MaxForce = Vector3.new(4000, 4000, 4000)
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")

    while flyEnabled do
        local mouse = player:GetMouse()
        bodyVelocity.Velocity = Vector3.new(
            speed * (mouse.X - character.HumanoidRootPart.Position.X) / 100,
            speed,
            speed * (mouse.Y - character.HumanoidRootPart.Position.Y) / 100
        )
        wait()
    end

    bodyVelocity:Destroy()
end

local function toggleFly()
    flyEnabled = not flyEnabled
    if flyEnabled then
        fly()
    end
end

-- Key binding for PC (F key)
UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.F then
        toggleFly()
    end
end)

-- Mobile button setup
local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 100, 0, 50)
flyButton.Position = UDim2.new(0.5, -50, 0.8, 0)
flyButton.Text = "Toggle Fly"
flyButton.Parent = ScreenGui

flyButton.MouseButton1Click:Connect(toggleFly)