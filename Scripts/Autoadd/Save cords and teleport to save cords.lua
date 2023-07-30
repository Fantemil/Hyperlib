wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "follow me on tiktok"; -- the title (ofc)
Text = "Made by vaxhas on TikTok, - yo yo yo it’s hump day tag three big dick ngga in the comment section"; -- what the text says (ofc)
Icon = "rbxassetid://57254792"; -- the image if u want. 
Duration = 5; -- how long the notification should in secounds
})

-- Create GUI
local gui = Instance.new("ScreenGui")
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Create main frame
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0, 50, 0, 50)
frame.BackgroundTransparency = 0.5
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.Active = true
frame.Draggable = true -- Make frame movable

-- Create buttons
local saveButton = Instance.new("TextButton")
saveButton.Parent = frame
saveButton.Size = UDim2.new(0, 150, 0, 30)
saveButton.Position = UDim2.new(0, 25, 0, 20)
saveButton.Text = "Save Cords"

local teleportButton = Instance.new("TextButton")
teleportButton.Parent = frame
teleportButton.Size = UDim2.new(0, 150, 0, 30)
teleportButton.Position = UDim2.new(0, 25, 0, 60)
teleportButton.Text = "Teleport to Cords"

local pauseButton = Instance.new("TextButton")
pauseButton.Parent = frame
pauseButton.Size = UDim2.new(0, 150, 0, 30)
pauseButton.Position = UDim2.new(0, 25, 0, 100)
pauseButton.Text = "Pause Loop"

local hideButton = Instance.new("TextButton")
hideButton.Parent = frame
hideButton.Size = UDim2.new(0, 25, 0, 25)
hideButton.Position = UDim2.new(1, -30, 0, 5)
hideButton.Text = "-"

-- Variables
local savedPosition = nil
local loopPaused = false

-- Function to save current coordinates
local function saveCoordinates()
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    if humanoidRootPart then
        savedPosition = humanoidRootPart.Position
        print("Coordinates saved:", savedPosition)
    end
end

-- Function to teleport to saved coordinates
local function teleportToCoordinates()
    if savedPosition then
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = CFrame.new(savedPosition)
        end
    end
end

-- Function to pause/unpause the loop
local function toggleLoop()
    loopPaused = not loopPaused
    if loopPaused then
        pauseButton.Text = "Resume Loop"
    else
        pauseButton.Text = "Pause Loop"
    end
end

-- Function to hide/show the GUI
local function toggleGuiVisibility()
    frame.Visible = not frame.Visible
    if frame.Visible then
        hideButton.Text = "-"
    else
        hideButton.Text = "+"
    end
end

-- Connect button click events
saveButton.MouseButton1Click:Connect(saveCoordinates)
teleportButton.MouseButton1Click:Connect(teleportToCoordinates)
pauseButton.MouseButton1Click:Connect(toggleLoop)
hideButton.MouseButton1Click:Connect(toggleGuiVisibility)

-- Loop to continuously teleport to saved coordinates
while true do
	wait(3.2)
	if not loopPaused and savedPosition then
		teleportToCoordinates()
	end
end