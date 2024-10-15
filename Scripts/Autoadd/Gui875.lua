local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local player = Players.LocalPlayer

local PiggyGui = Instance.new("ScreenGui", game.CoreGui)
local ScrollingFrame = Instance.new("ScrollingFrame", PiggyGui)
ScrollingFrame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
ScrollingFrame.Position = UDim2.new(0.08, 0, 0.42, 0)
ScrollingFrame.Size = UDim2.new(0, 296, 0, 388)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)

local UIGridLayout = Instance.new("UIGridLayout", ScrollingFrame)
UIGridLayout.CellSize = UDim2.new(0, 90, 0, 90)

local dragging, dragStart, startPos
local function update(input)
    local delta = input.Position - dragStart
    ScrollingFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

ScrollingFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = ScrollingFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UIS.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        update(input)
    end
end)

local function updateItems()
    local items = {}
    for _, descendant in pairs(workspace:GetDescendants()) do
        if (descendant.Name == "ItemPickupScript" or descendant.Name == "NewItemPickupScript") and descendant.Parent:FindFirstChild("ClickDetector") then
            table.insert(items, descendant.Parent)
        elseif descendant.Parent:FindFirstChild("ProximityPrompt") and descendant.Name == "NewItemPickupScript" then
            table.insert(items, descendant.Parent)
        end
    end
    return items
end

local function createItemFrame(object)
    local ItemFrame = Instance.new("TextButton", ScrollingFrame)
    ItemFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    ItemFrame.BackgroundTransparency = 0.95
    ItemFrame.Size = UDim2.new(0, 100, 0, 100)
    ItemFrame.Text = ""

    local View = Instance.new("ViewportFrame", ItemFrame)
    View.Size = UDim2.new(1, 0, 1, 0)
    View.BackgroundTransparency = 1

    local clone = object:Clone()
    clone.Parent = View

    local cam = Instance.new("Camera", View)
    cam.CameraType = Enum.CameraType.Fixed
    cam.CFrame = CFrame.new(object.Position + Vector3.new(0, 3, 0), object.Position)
    View.CurrentCamera = cam

    ItemFrame.MouseButton1Down:Connect(function()
        if object:FindFirstChild("ClickDetector") then
            local cpos = player.Character.HumanoidRootPart.CFrame
            player.Character.HumanoidRootPart.CFrame = object.CFrame
            task.wait(0.1)
            fireclickdetector(object.ClickDetector)
            task.wait(0.3)
            player.Character.HumanoidRootPart.CFrame = cpos
        elseif object:FindFirstChild("ProximityPrompt") then
            fireproximityprompt(object.ProximityPrompt)
        end
    end)
end

local items = updateItems()
for _, item in pairs(items) do
    createItemFrame(item)
end

while task.wait(10) do
    for _, child in pairs(ScrollingFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    items = updateItems()
    for _, item in pairs(items) do
        createItemFrame(item)
    end
end