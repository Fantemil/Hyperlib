local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Reach = Instance.new("TextButton")
local SizeInput = Instance.new("TextBox")
local ApplyButton = Instance.new("TextButton")

-- Variables for hitbox size
local hitboxSize = Vector3.new(100, 100, 100)

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(75, 75, 75)
Frame.BorderColor3 = Color3.fromRGB(75, 75, 75)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0809101239, 0, 0.203790441, 0)
Frame.Size = UDim2.new(0, 250, 0, 200) -- Adjusted height to fit all elements
Frame.Active = true
Frame.Draggable = true

Reach.Name = "Reach"
Reach.Parent = Frame
Reach.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
Reach.BorderSizePixel = 0
Reach.Position = UDim2.new(0, 0, 0, 0)
Reach.Size = UDim2.new(0, 250, 0, 38)
Reach.Font = Enum.Font.GothamBlack
Reach.Text = "Reach"
Reach.TextColor3 = Color3.fromRGB(255, 255, 255)
Reach.TextSize = 14.000

SizeInput.Name = "SizeInput"
SizeInput.Parent = Frame
SizeInput.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
SizeInput.BorderSizePixel = 0
SizeInput.Position = UDim2.new(0, 0, 0.2, 0) -- Positioned below the "Reach" button
SizeInput.Size = UDim2.new(0, 250, 0, 30)
SizeInput.Font = Enum.Font.Gotham
SizeInput.PlaceholderText = "Enter size as X,Y,Z"
SizeInput.Text = ""
SizeInput.TextColor3 = Color3.fromRGB(255, 255, 255)
SizeInput.TextSize = 14.000

ApplyButton.Name = "ApplyButton"
ApplyButton.Parent = Frame
ApplyButton.BackgroundColor3 = Color3.fromRGB(71, 71, 71)
ApplyButton.BorderSizePixel = 0
ApplyButton.Position = UDim2.new(0, 0, 0.4, 0) -- Positioned slightly above previous position
ApplyButton.Size = UDim2.new(0, 250, 0, 38)
ApplyButton.Font = Enum.Font.GothamBlack
ApplyButton.Text = "Apply Size"
ApplyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ApplyButton.TextSize = 14.000

-- Notification on script execution
game.StarterGui:SetCore("SendNotification", {
    Title = "Hello"; 
    Text = "Made by Indonesiangamer777"; 
    Duration = 5;
})

ApplyButton.MouseButton1Down:Connect(function()
    local sizeText = SizeInput.Text
    local sizeValues = string.split(sizeText, ",")
    
    if #sizeValues == 3 then
        local x, y, z = tonumber(sizeValues[1]), tonumber(sizeValues[2]), tonumber(sizeValues[3])
        if x and y and z then
            hitboxSize = Vector3.new(x, y, z)
            Reach.MouseButton1Down:Connect(function()
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://413861777"
                sound.Parent = game:GetService("SoundService")
                sound:Play()

                wait()
                game.StarterGui:SetCore("SendNotification", {
                    Title = "Need tool"; 
                    Text = "If you don't have a weapon then get one and use this command"; 
                    Duration = 5;
                })
                for i, v in pairs(game:GetService'Players'.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("Tool") and v:FindFirstChild("Handle") then
                        local handle = v.Handle
                        handle.Massless = true
                        handle.Transparency = 1
                        handle.Size = hitboxSize

                        local selectionBox = Instance.new("SelectionBox", handle)
                        selectionBox.Adornee = handle
                        selectionBox.Color3 = Color3.new(0, 0.313725, 0.47451)
                        selectionBox.Size = handle.Size -- Ensure the SelectionBox covers the Handle's new size
                    end
                end
            end)
        else
            print("Invalid size values.")
        end
    else
        print("Please enter size in X,Y,Z format.")
    end
end)
