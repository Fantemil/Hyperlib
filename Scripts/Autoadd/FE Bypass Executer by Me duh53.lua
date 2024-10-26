local CoreScript = Instance.new("ScreenGui")
CoreScript.Name = "CoreGui"
CoreScript.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
frame.BackgroundTransparency = 0.5
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.new("Dark Red")
frame.Active = true
frame.Draggable = true
frame.Parent = CoreScript

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 5)
corner.Parent = frame

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0, 32)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundColor3 = Color3.new(0, 0, 0)
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.Text = "Top Text Label"
textLabel.Parent = frame

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 100, 0, 50)
button.Position = UDim2.new(0.5, -50, 0.5, -25)
button.BackgroundColor3 = Color3.new(0, 0, 0)
button.TextColor3 = Color3.new(1, 1, 1)
button.Text = "Center Button"
button.Parent = frame

local function onButtonClick()
    local remoteEvents = game:GetService("ReplicatedStorage"):GetDescendants()
    for _, remoteEvent in ipairs(remoteEvents) do
        if remoteEvent:IsA("RemoteEvent") then
            frame:Destroy()
            local secondFrame = Instance.new("Frame")
            secondFrame.Size = UDim2.new(0, 300, 0, 200)
            secondFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
            secondFrame.BackgroundColor3 = Color3.new(1, 1, 1)
            secondFrame.BackgroundTransparency = 0.5
            secondFrame.BorderSizePixel = 0
            secondFrame.Active = true
            secondFrame.Draggable = true
            secondFrame.Parent = CoreScript
            
            local secondCorner = Instance.new("UICorner")
            secondCorner.CornerRadius = UDim.new(0, 5)
            secondCorner.Parent = secondFrame
            
            local textBox = Instance.new("TextBox")
            textBox.Size = UDim2.new(0, 200, 0, 50)
            textBox.Position = UDim2.new(0.5, -100, 0.5, -25)
            textBox.BackgroundColor3 = Color3.new(0, 0, 0)
            textBox.TextColor3 = Color3.new(1, 1, 1)
            textBox.Parent = secondFrame
           
            local button2 = Instance.new("TextButton")
            button2.Size = UDim2.new(0, 100, 0, 50)
            button2.Position = UDim2.new(0, 0, 0, 60)
            button2.BackgroundColor3 = Color3.new(0, 0, 0)
            button2.TextColor3 = Color3.new(1, 1, 1)
            button2.Text = "Button 2"
            button2.Parent = secondFrame
            
            local button3 = Instance.new("TextButton")
            button3.Size = UDim2.new(0, 100, 0, 50)
            button3.Position = UDim2.new(1, -100, 0, 60)
            button3.BackgroundColor3 = Color3.new(0, 0, 0)
            button3.TextColor3 = Color3.new(1, 1, 1)
            button3.Text = "Button 3"
            button3.Parent = secondFrame
            
            local function onButton2Click()
                local scriptToExecute = textBox.Text
                remoteEvent:FireClient(game.Players.LocalPlayer, scriptToExecute)
            end
            
            local function onButton3Click()
                textBox.Text = ""
            end
            
            button2.MouseButton1Click:Connect(onButton2Click)
            button3.MouseButton1Click:Connect(onButton3Click)
            
            break
        end
    end
end

button.MouseButton1Click:Connect(onButtonClick)