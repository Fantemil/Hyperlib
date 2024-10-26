-- Create PiggyGui
local PiggyGui = Instance.new("ScreenGui")
PiggyGui.Name = "PiggyGui"
PiggyGui.Parent = game.CoreGui

-- Create ScrollingFrame
local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.18, 0, 0.42, 0)  -- Move to the right
ScrollingFrame.Size = UDim2.new(0, 300, 0, 400)  -- Larger size
ScrollingFrame.Visible = false  -- Initially hidden

-- Create Toggle Button
local ToggleButton = Instance.new("TextButton", PiggyGui)
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0.5, -25, 0.5, -25)  -- Center of the screen
ToggleButton.Text = "P"
ToggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ToggleButton.TextColor3 = Color3.new(1, 1, 1)
ToggleButton.Active = true
ToggleButton.BorderSizePixel = 0
ToggleButton.BackgroundTransparency = 0.5
ToggleButton.ClipsDescendants = true

-- Make ToggleButton draggable
local draggingToggle
local dragInputToggle
local dragStartToggle
local startPosToggle

local function updateToggle(input)
    local delta = input.Position - dragStartToggle
    ToggleButton.Position = UDim2.new(startPosToggle.X.Scale, startPosToggle.X.Offset + delta.X, startPosToggle.Y.Scale, startPosToggle.Y.Offset + delta.Y)
end

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        draggingToggle = true
        dragStartToggle = input.Position
        startPosToggle = ToggleButton.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                draggingToggle = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInputToggle = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInputToggle and draggingToggle then
        updateToggle(input)
    end
end)

-- Toggle ScrollingFrame visibility
ToggleButton.MouseButton1Click:Connect(function()
    ScrollingFrame.Visible = not ScrollingFrame.Visible
end)

-- Create UIGridLayout
local UIGridLayout = Instance.new("UIGridLayout", ScrollingFrame)
UIGridLayout.CellSize = UDim2.new(0, 90, 0, 90)

-- Update items periodically
while wait(1) do
    if ScrollingFrame.Visible then
        local a = workspace:GetDescendants()
        local items = {}
        local itemframes = ScrollingFrame:GetChildren()

        -- Clear existing item frames
        for _, frame in ipairs(itemframes) do
            if frame.ClassName == "TextButton" then
                frame:Destroy()
            end
        end

        -- Find items to display
        for _, obj in ipairs(a) do
            if obj.Name == "ItemPickupScript" and obj.Parent:FindFirstChild("ClickDetector") then
                table.insert(items, obj.Parent)
            end
        end

        -- Create new item frames
        for _, item in ipairs(items) do
            local ItemFrame = Instance.new("TextButton", ScrollingFrame)
            ItemFrame.Name = "ItemFrame"
            ItemFrame.BackgroundColor3 = Color3.new(1, 1, 1)
            ItemFrame.BackgroundTransparency = 0.95
            ItemFrame.Size = UDim2.new(0, 100, 0, 100)
            ItemFrame.Text = ""

            local View = Instance.new("ViewportFrame", ItemFrame)
            View.Name = "View"
            View.Size = UDim2.new(1, 0, 1, 0)
            View.BackgroundTransparency = 1
            View.BorderSizePixel = 0

            local viewportclone = item:Clone()
            viewportclone.Parent = View

            local cam = Instance.new("Camera", View)
            cam.CameraType = Enum.CameraType.Fixed
            local objectPosition = item.Position
            local cameraPosition = objectPosition + Vector3.new(0, 3, 0)
            cam.CFrame = CFrame.new(cameraPosition, objectPosition)
            View.CurrentCamera = cam

            ItemFrame.MouseButton1Down:Connect(function()
                if item:FindFirstChild("ClickDetector") then
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if character and character:FindFirstChild("HumanoidRootPart") then
                        local cpos = character.HumanoidRootPart.CFrame
                        wait(0.05)
                        character.HumanoidRootPart.CFrame = item.CFrame
                        wait(0.1)
                        fireclickdetector(item.ClickDetector)
                        wait(0.3)
                        character.HumanoidRootPart.CFrame = cpos
                    end
                end
            end)
        end
    end
end