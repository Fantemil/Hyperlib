-- Services
local Players = game:GetService('Players')
local RunService = game:GetService('RunService')
local UserInputService = game:GetService('UserInputService')
local TweenService = game:GetService('TweenService')

-- Constants
local LOCAL_PLAYER = Players.LocalPlayer
local MONSTER_FOLDER = workspace:WaitForChild('MonsterFolder')
local DEBOUNCE_TIME = 0.5
local COLORS = {
    DEFAULT = Color3.new(1, 1, 1),
    HIGHLIGHTED = Color3.new(0, 0, 1),
    MONSTER = Color3.new(1, 0, 0),
    NEUTRAL = Color3.new(0, 1, 0)
}

-- State
local State = {
    isESPEnabled = false,
    lastActivationTime = 0,
    highlightedPlayer = nil,
    monsterPlayer = nil,
    connections = {}
}

-- Utility Functions
local function debounce(func)
    return function(...)
        local now = tick()
        if now - State.lastActivationTime < DEBOUNCE_TIME then return end
        State.lastActivationTime = now
        return func(...)
    end
end

local function createHighlight(player, color)
    local highlight = Instance.new('Highlight')
    highlight.FillColor = color
    highlight.FillTransparency = 0.5
    highlight.OutlineColor = color
    highlight.OutlineTransparency = 0
    highlight.Adornee = player.Character
    highlight.Parent = player.Character
    return highlight
end

-- ESP Logic
local function updatePlayerESP(player)
    if player == LOCAL_PLAYER then return end
    
    local highlight = player.Character:FindFirstChild('Highlight')
    if not highlight then
        highlight = createHighlight(player, COLORS.DEFAULT)
    end
    
    local color = COLORS.DEFAULT
    if player == State.highlightedPlayer then
        color = COLORS.HIGHLIGHTED
    elseif player == State.monsterPlayer then
        color = COLORS.MONSTER
    elseif player.Backpack then
        if player.Backpack:FindFirstChild('Gun') then
            State.highlightedPlayer = player
            color = COLORS.HIGHLIGHTED
        elseif player.Backpack:FindFirstChild('Monster') then
            State.monsterPlayer = player
            color = COLORS.MONSTER
        else
            color = COLORS.NEUTRAL
        end
    end
    
    highlight.FillColor = color
    highlight.OutlineColor = color
end

local function updateMonsterESP()
    for _, monster in ipairs(MONSTER_FOLDER:GetChildren()) do
        if monster:IsA('Model') and monster.Name:sub(1, 7) == 'MONSTER' then
            local player = Players:FindFirstChild(monster.Name:sub(8))
            if player then
                State.monsterPlayer = player
                break
            end
        end
    end
end

local function updateESP()
    if not State.isESPEnabled then return end
    for _, player in ipairs(Players:GetPlayers()) do
        updatePlayerESP(player)
    end
    updateMonsterESP()
end

-- GUI Creation
local function createGUI()
    local ScreenGui = Instance.new('ScreenGui')
    ScreenGui.Name = 'ESPHUD'
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = game.CoreGui

    local MainFrame = Instance.new('Frame')
    MainFrame.Name = 'MainFrame'
    MainFrame.Size = UDim2.new(0, 200, 0, 120)
    MainFrame.Position = UDim2.new(0.5, -100, 0.5, -60)
    MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    MainFrame.BorderSizePixel = 0
    MainFrame.Parent = ScreenGui

    local UICorner = Instance.new('UICorner')
    UICorner.CornerRadius = UDim.new(0, 8)
    UICorner.Parent = MainFrame

    local Title = Instance.new('TextLabel')
    Title.Name = 'Title'
    Title.Size = UDim2.new(1, -10, 0, 30)
    Title.Position = UDim2.new(0, 5, 0, 5)
    Title.BackgroundTransparency = 1
    Title.Text = 'Advanced ESP HUD'
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.TextSize = 18
    Title.Font = Enum.Font.SourceSansBold
    Title.Parent = MainFrame

    local ToggleButton = Instance.new('TextButton')
    ToggleButton.Name = 'ToggleButton'
    ToggleButton.Size = UDim2.new(0.9, 0, 0, 35)
    ToggleButton.Position = UDim2.new(0.05, 0, 0.5, -17)
    ToggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    ToggleButton.BorderSizePixel = 0
    ToggleButton.Text = 'Enable ESP'
    ToggleButton.TextColor3 = Color3.new(1, 1, 1)
    ToggleButton.TextSize = 14
    ToggleButton.Font = Enum.Font.SourceSansBold
    ToggleButton.Parent = MainFrame

    local ButtonCorner = Instance.new('UICorner')
    ButtonCorner.CornerRadius = UDim.new(0, 6)
    ButtonCorner.Parent = ToggleButton

    local CloseButton = ToggleButton:Clone()
    CloseButton.Name = 'CloseButton'
    CloseButton.Size = UDim2.new(0, 25, 0, 25)
    CloseButton.Position = UDim2.new(1, -30, 0, 5)
    CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
    CloseButton.Text = 'X'
    CloseButton.Parent = MainFrame

    local MobileToggle = ToggleButton:Clone()
    MobileToggle.Name = 'MobileToggleButton'
    MobileToggle.Size = UDim2.new(0, 50, 0, 50)
    MobileToggle.Position = UDim2.new(0, 10, 0, 10)
    MobileToggle.Text = 'Menu'
    MobileToggle.Parent = ScreenGui
    MobileToggle.Visible = UserInputService.TouchEnabled

    return {
        mainFrame = MainFrame,
        toggleButton = ToggleButton,
        closeButton = CloseButton,
        mobileToggle = MobileToggle
    }
end

-- GUI Logic
local function setupGUI()
    local gui = createGUI()
    
    local function toggleESP()
        State.isESPEnabled = not State.isESPEnabled
        gui.toggleButton.Text = State.isESPEnabled and 'Disable ESP' or 'Enable ESP'
        gui.toggleButton.BackgroundColor3 = State.isESPEnabled and Color3.fromRGB(200, 50, 50) or Color3.fromRGB(60, 60, 60)
        
        if State.isESPEnabled then
            table.insert(State.connections, RunService.Heartbeat:Connect(updateESP))
        else
            for _, connection in ipairs(State.connections) do
                connection:Disconnect()
            end
            State.connections = {}
            for _, player in ipairs(Players:GetPlayers()) do
                local highlight = player.Character and player.Character:FindFirstChild('Highlight')
                if highlight then highlight:Destroy() end
            end
            State.highlightedPlayer, State.monsterPlayer = nil, nil
        end
    end

    gui.toggleButton.MouseButton1Click:Connect(debounce(toggleESP))
    gui.closeButton.MouseButton1Click:Connect(function() gui.mainFrame.Visible = false end)
    gui.mobileToggle.MouseButton1Click:Connect(function() gui.mainFrame.Visible = not gui.mainFrame.Visible end)

    -- Draggable GUI
    local dragging, dragInput, dragStart, startPos
    gui.mainFrame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.mainFrame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then dragging = false end
            end)
        end
    end)
    gui.mainFrame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            gui.mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)

    -- Keyboard shortcut
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed and input.KeyCode == Enum.KeyCode.G then
            gui.mainFrame.Visible = not gui.mainFrame.Visible
        end
    end)

    gui.mainFrame.Visible = false
end

-- Initialize
setupGUI()