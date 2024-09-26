-- Create a GUI for the key system
local keyGui = Instance.new("ScreenGui")
keyGui.Name = "KeyGui"
keyGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create a frame for the key input
local keyFrame = Instance.new("Frame")
keyFrame.Parent = keyGui
keyFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
keyFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
keyFrame.BackgroundTransparency = 0.5

-- Create a label for the key input
local keyLabel = Instance.new("TextLabel")
keyLabel.Parent = keyFrame
keyLabel.Size = UDim2.new(1, 0, 0.2, 0)
keyLabel.Position = UDim2.new(0, 0, 0, 0)
keyLabel.Text = "Enter the key to unlock it:"

-- Create a text box for the key input
local keyTextBox = Instance.new("TextBox")
keyTextBox.Parent = keyFrame
keyTextBox.Size = UDim2.new(1, 0, 0.2, 0)
keyTextBox.Position = UDim2.new(0, 0, 0.2, 0)
keyTextBox.BackgroundTransparency = 0.5

-- Create a button for submitting the key
local keyButton = Instance.new("TextButton")
keyButton.Parent = keyFrame
keyButton.Size = UDim2.new(1, 0, 0.2, 0)
keyButton.Position = UDim2.new(0, 0, 0.4, 0)
keyButton.BackgroundTransparency = 0.5
keyButton.Text = "Submit"

-- Create a BoolValue to track if the key has been entered correctly
local keyUnlocked = Instance.new("BoolValue")
keyUnlocked.Name = "KeyUnlocked"
keyUnlocked.Parent = keyGui
keyUnlocked.Value = false

-- Connect the button's MouseButton1Click event to a function that checks the key
keyButton.MouseButton1Click:Connect(function()
    if keyTextBox.Text == "poopers" then
        keyUnlocked.Value = true
        keyFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
        -- Add code here to open the script
        print("Script opened!")
    else
        keyTextBox.Text = ""
        print("Incorrect key!")
    end
end)

-- Create a RemoteEvent to open the script from a server script
local openScriptEvent = Instance.new("RemoteEvent")
openScriptEvent.Name = "OpenScriptEvent"
openScriptEvent.Parent = game.ReplicatedStorage

-- Connect the KeyUnlocked BoolValue's ValueChanged event to a function that fires the RemoteEvent
keyUnlocked.ValueChanged:Connect(function(value)
    if value == true then
        openScriptEvent:FireAllClients()
    end
end)

-- Create a server script that listens for the OpenScriptEvent and runs the script
game.ServerScriptService.OpenScriptServer.Script:Connect(function()
    print("Script opened from server!")
    -- Add code here to run the script
end)

-- Create a function to show a notification to the player
function showNotification(player, message)
    -- Show the notification
    game.StarterGui:SetCore("SendNotification", {
        Title = "key system Made by cat_givemyroboxCHEAT";
        Text = message;
        Duration = 5;
    })
end