local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Function to show the fake kick message
local function showFakeKickMessage()
    -- Create a ScreenGui
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "FakeKickGui"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Create a TextLabel for the message
    local kickMessage = Instance.new("TextLabel")
    kickMessage.Size = UDim2.new(0.5, 0, 0.1, 0)
    kickMessage.Position = UDim2.new(0.25, 0, 0.45, 0)
    kickMessage.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    kickMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
    kickMessage.TextScaled = true
    kickMessage.Text = "You have been kicked from the game!"
    kickMessage.Parent = screenGui

    -- Wait for a few seconds and then remove the message
    wait(3)
    screenGui:Destroy()
end

-- Call the function to show the message
showFakeKickMessage()
