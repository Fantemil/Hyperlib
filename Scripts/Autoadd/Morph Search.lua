local MorphTriggersFolder = workspace.Interactables.MorphTriggers

local triggerNames = {}

if MorphTriggersFolder then
    for _, trigger in ipairs(MorphTriggersFolder:GetChildren()) do
        if trigger:IsA("MeshPart") then
            triggerNames[#triggerNames + 1] = trigger.Name
        end
    end
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") -- Make This As An CoreGui Or Just Make It An PlayerGui

local Frame = Instance.new("Frame")
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 300)
Frame.Position = UDim2.new(0.5, -150, 0.5, -150)
Frame.BackgroundColor3 = Color3.fromRGB(41, 47, 54)
Frame.BorderSizePixel = 0
Frame.Active = true
Frame.Draggable = true

local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(29, 33, 37)
Title.BorderSizePixel = 0
Title.Text = "Made By Soul Reaper Hub"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 16

local ScrollFrame = Instance.new("ScrollingFrame")
ScrollFrame.Parent = Frame
ScrollFrame.Size = UDim2.new(0.8, 0, 0.7, 0)
ScrollFrame.Position = UDim2.new(0.1, 0, 0.2, 0)
ScrollFrame.BackgroundColor3 = Color3.fromRGB(29, 33, 37)
ScrollFrame.BorderSizePixel = 0
ScrollFrame.ScrollBarThickness = 6
ScrollFrame.ScrollingDirection = Enum.ScrollingDirection.Y

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Parent = ScrollFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

local function AddMorphButton(name)
    local MorphButton = Instance.new("TextButton")
    MorphButton.Parent = ScrollFrame
    MorphButton.Size = UDim2.new(1, 0, 0, 30)
    MorphButton.BackgroundColor3 = Color3.fromRGB(41, 47, 54)
    MorphButton.BorderSizePixel = 0
    MorphButton.Text = name
    MorphButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MorphButton.Font = Enum.Font.Gotham
    MorphButton.TextSize = 14
    MorphButton.MouseButton1Click:Connect(function()
        local morphTrigger = MorphTriggersFolder:FindFirstChild(name)
        if morphTrigger then
            local teleportPosition = morphTrigger.Position
            game.Players.LocalPlayer.Character:MoveTo(teleportPosition)
        end
    end)
end

for _, name in ipairs(triggerNames) do
    AddMorphButton(name)
end

local SearchBar = Instance.new("TextBox")
SearchBar.Parent = Frame
SearchBar.Size = UDim2.new(0.8, 0, 0, 30)
SearchBar.Position = UDim2.new(0.1, 0, 0.1, 0)
SearchBar.BackgroundColor3 = Color3.fromRGB(41, 47, 54)
SearchBar.BorderSizePixel = 0
SearchBar.Text = "Search morphs..."
SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.Font = Enum.Font.Gotham
SearchBar.TextSize = 14

local function FilterMorphs(searchText)
    searchText = searchText:lower()
    for _, button in ipairs(ScrollFrame:GetChildren()) do
        if button:IsA("TextButton") then
            local morphName = button.Text:lower()
            button.Visible = morphName:find(searchText, 1, true) ~= nil
        end
    end
end

--Search Bar cuz uhhh to many morphs lol

SearchBar.Focused:Connect(function()
    if SearchBar.Text == "Search morphs..." then
        SearchBar.Text = ""
    end
end)

SearchBar.Changed:Connect(function()
    if SearchBar:IsFocused() then
        FilterMorphs(SearchBar.Text)
    end
end)

SearchBar.FocusLost:Connect(function(enterPressed)
    if not enterPressed then
        SearchBar.Text = "Search morphs..."
        FilterMorphs("")
    end
end)

local function UpdateScroll()
    local listHeight = UIListLayout.AbsoluteContentSize.Y
    ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, listHeight)
end

ScrollFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    local scrollY = ScrollFrame.CanvasPosition.Y
    local listHeight = UIListLayout.AbsoluteContentSize.Y
    if scrollY >= listHeight - ScrollFrame.AbsoluteSize.Y then
        ScrollFrame.CanvasPosition = Vector2.new(0, listHeight - ScrollFrame.AbsoluteSize.Y)
    end
end)

UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(UpdateScroll)
UpdateScroll()
