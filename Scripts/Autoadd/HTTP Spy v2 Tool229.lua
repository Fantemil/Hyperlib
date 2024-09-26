local HttpSpy = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local TitleText = Instance.new("TextLabel")
local MainContainer = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding = Instance.new("UIPadding")

-- Properties
HttpSpy.Name = "HttpSpy"
HttpSpy.Parent = game.CoreGui
HttpSpy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = HttpSpy
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 400, 0, 300)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 30)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = TitleBar

TitleText.Name = "TitleText"
TitleText.Parent = TitleBar
TitleText.BackgroundTransparency = 1
TitleText.Position = UDim2.new(0, 10, 0, 0)
TitleText.Size = UDim2.new(1, -40, 1, 0)
TitleText.Font = Enum.Font.GothamSemibold
TitleText.Text = "HTTP Spy v2"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.TextSize = 14
TitleText.TextXAlignment = Enum.TextXAlignment.Left

local MinimizeButton = Instance.new("TextButton")
MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = TitleBar
MinimizeButton.BackgroundTransparency = 1
MinimizeButton.Position = UDim2.new(1, -30, 0, 0)
MinimizeButton.Size = UDim2.new(0, 30, 1, 0)
MinimizeButton.Font = Enum.Font.GothamBold
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.TextSize = 20

MainContainer.Name = "MainContainer"
MainContainer.Parent = MainFrame
MainContainer.BackgroundTransparency = 1
MainContainer.Position = UDim2.new(0, 0, 0, 30)
MainContainer.Size = UDim2.new(1, 0, 1, -30)
MainContainer.ScrollBarThickness = 4
MainContainer.ScrollBarImageColor3 = Color3.fromRGB(80, 80, 80)

UIListLayout.Parent = MainContainer
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

UIPadding.Parent = MainContainer
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 10)

local NotificationFrame = Instance.new("Frame")
local NotificationText = Instance.new("TextLabel")

NotificationFrame.Name = "NotificationFrame"
NotificationFrame.Parent = HttpSpy
NotificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
NotificationFrame.BorderSizePixel = 0
NotificationFrame.Position = UDim2.new(1, -220, 1, -60)
NotificationFrame.Size = UDim2.new(0, 200, 0, 40)
NotificationFrame.Visible = false

local NotificationCorner = Instance.new("UICorner")
NotificationCorner.CornerRadius = UDim.new(0, 5)
NotificationCorner.Parent = NotificationFrame

NotificationText.Name = "NotificationText"
NotificationText.Parent = NotificationFrame
NotificationText.BackgroundTransparency = 1
NotificationText.Size = UDim2.new(1, 0, 1, 0)
NotificationText.Font = Enum.Font.GothamSemibold
NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
NotificationText.TextSize = 14
NotificationText.Text = "Log copied to clipboard!"

local isMinimized = false

MinimizeButton.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized

    if not isMinimized then
        MainContainer.Visible = true
        MainFrame.Size = UDim2.new(0, 400, 0, 300)
        MinimizeButton.Text = "-"
        return
    end

    MainContainer.Visible = false
    MainFrame.Size = UDim2.new(0, 400, 0, 30)
    MinimizeButton.Text = "+"
end)

-- Functions
local function createDraggable(gui)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then return end

        dragging = true
        dragStart = input.Position
        startPos = gui.Position

        input.Changed:Connect(function()
            if input.UserInputState ~= Enum.UserInputState.End then return end
            dragging = false
        end)
    end)

    gui.InputChanged:Connect(function(input)
        if input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then return end
        dragInput = input
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input ~= dragInput or not dragging then return end
        update(input)
    end)
end

createDraggable(MainFrame)

local function registerDynamicScrollingFrame(frame)
    local layout = frame:FindFirstChildWhichIsA("UIListLayout")

    local function updateCanvasSize()
        frame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
    end

    layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)
    updateCanvasSize()
end

registerDynamicScrollingFrame(MainContainer)

local function showNotification()
    NotificationFrame.Visible = true
    task.wait(2)
    NotificationFrame.Visible = false
end

local function formatLogEntry(method, url, headers)
    if not method or not url then
        return ""
    end

    local text = method .. "\n" .. url

    if not headers or type(headers) ~= "table" then
        return text
    end

    text ..= "\n\nHeaders:"
    for key, value in pairs(headers) do
        text ..= string.format("\n%s: %s", tostring(key), tostring(value))
    end

    return text
end

local function createLogEntry(method, url, headers)
    local LogEntry = Instance.new("TextButton")
    LogEntry.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    LogEntry.BorderSizePixel = 0
    LogEntry.Size = UDim2.new(1, 0, 0, 30)
    LogEntry.Font = Enum.Font.SourceSansSemibold
    LogEntry.TextColor3 = Color3.fromRGB(220, 220, 220)
    LogEntry.TextSize = 14
    LogEntry.TextWrapped = true
    LogEntry.TextXAlignment = Enum.TextXAlignment.Left
    LogEntry.TextYAlignment = Enum.TextYAlignment.Top
    LogEntry.AutoButtonColor = false

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 5)
    UICorner.Parent = LogEntry

    local UIPadding = Instance.new("UIPadding")
    UIPadding.Parent = LogEntry
    UIPadding.PaddingLeft = UDim.new(0, 10)
    UIPadding.PaddingRight = UDim.new(0, 10)
    UIPadding.PaddingTop = UDim.new(0, 5)
    UIPadding.PaddingBottom = UDim.new(0, 5)

    local logText = formatLogEntry(method, url, headers)
    LogEntry.Text = logText
    LogEntry.Parent = MainContainer

    local textSize = game:GetService("TextService"):GetTextSize(
        LogEntry.Text,
        LogEntry.TextSize,
        LogEntry.Font,
        Vector2.new(MainContainer.AbsoluteSize.X - 40, math.huge)
    )
    LogEntry.Size = UDim2.new(1, 0, 0, textSize.Y + 10)

    local OriginalColor = LogEntry.BackgroundColor3

    LogEntry.MouseEnter:Connect(function()
        LogEntry.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    end)

    LogEntry.MouseLeave:Connect(function()
        LogEntry.BackgroundColor3 = OriginalColor
    end)

    LogEntry.MouseButton1Click:Connect(function()
        setclipboard(logText)
        showNotification()
    end)

    MainContainer.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end

-- HTTP Spy Logic
local HttpGet
HttpGet = hookfunction(game.HttpGet, function(self, url, ...)
    createLogEntry("HTTP GET", url)
    return HttpGet(self, url, ...)
end)

local HttpPost
HttpPost = hookfunction(game.HttpPost, function(self, url, ...)
    createLogEntry("HTTP POST", url)
    return HttpPost(self, url, ...)
end)

local RequestLog
if syn and syn.request then
    RequestLog = hookfunction(syn.request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
elseif request then
    RequestLog = hookfunction(request, function(dat)
        createLogEntry(dat.Method or "REQUEST", dat.Url, dat.Headers)
        return RequestLog(dat)
    end)
else
    createLogEntry("WARNING", "Your exploit is not supported!")
end