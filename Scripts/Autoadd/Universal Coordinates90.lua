
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


local coordTextBox = Instance.new("TextBox")
coordTextBox.Size = UDim2.new(0.5, 0, 0.1, 0)
coordTextBox.Position = UDim2.new(0.25, 0, 0.4, 0)
coordTextBox.Text = "Coordinates: "
coordTextBox.TextColor3 = Color3.new(1, 1, 1)
coordTextBox.BackgroundTransparency = 0.5
coordTextBox.BackgroundColor3 = Color3.new(0, 0, 0)
coordTextBox.Font = Enum.Font.SourceSansBold
coordTextBox.TextScaled = true
coordTextBox.ClearTextOnFocus = false
coordTextBox.Selectable = true
coordTextBox.Parent = gui


local function updateCoordinates()
    local playerPosition = game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character.PrimaryPart.Position
    if playerPosition then
        coordTextBox.Text = "Coordinates: " .. tostring(playerPosition.X) .. ", " .. tostring(playerPosition.Y) .. ", " .. tostring(playerPosition.Z)
    end
end


updateCoordinates()


wait(5)
coordTextBox:Destroy()
