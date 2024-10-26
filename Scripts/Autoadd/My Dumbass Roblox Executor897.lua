local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local SideFrame = Instance.new("Frame")
local SideFrameTitle = Instance.new("TextLabel")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ExecuteButton = Instance.new("TextButton")
local ScriptBoxContainer = Instance.new("ScrollingFrame")
local ScriptBox = Instance.new("TextBox")
local LineNumbers = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")

-- Properti ScreenGui
ScreenGui.Name = "ExecutorGUI"
ScreenGui.Parent = game.CoreGui  -- Memastikan ScreenGui dimasukkan ke dalam CoreGui

-- Fungsi untuk menambahkan dropshadow
local function addDropShadow(parent)
    local dropShadow = Instance.new("ImageLabel")
    dropShadow.Name = "DropShadow"
    dropShadow.Parent = parent
    dropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    dropShadow.BackgroundTransparency = 1
    dropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    dropShadow.Size = UDim2.new(1, 20, 1, 20)
    dropShadow.ZIndex = parent.ZIndex - 1
    dropShadow.Image = "rbxassetid://1316045217"
    dropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    dropShadow.ImageTransparency = 0.9
    dropShadow.ScaleType = Enum.ScaleType.Slice
    dropShadow.SliceCenter = Rect.new(10, 10, 118, 118)
end

-- Properti MainFrame
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 48)
MainFrame.Position = UDim2.new(0.3, 0, 0.3, 0)
MainFrame.Size = UDim2.new(0.45, 0, 0.45, 0)
MainFrame.Active = true
MainFrame.Draggable = true

-- Menambahkan UICorner untuk MainFrame
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame

-- Menambahkan dropshadow untuk MainFrame
addDropShadow(MainFrame)

-- Properti SideFrame
SideFrame.Name = "SideFrame"
SideFrame.Parent = MainFrame
SideFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
SideFrame.Position = UDim2.new(0, 0, 0, 0)
SideFrame.Size = UDim2.new(0.25, 0, 1, 0)

-- Menambahkan UICorner untuk SideFrame
local SideFrameCorner = UICorner:Clone()
SideFrameCorner.Parent = SideFrame

-- Properti ScrollingFrame
ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.Parent = SideFrame
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0.1, 0)
ScrollingFrame.Size = UDim2.new(1, 0, 0.9, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollingFrame.ScrollBarThickness = 6

-- Menambahkan UICorner untuk ScrollingFrame
local ScrollingFrameCorner = UICorner:Clone()
ScrollingFrameCorner.Parent = ScrollingFrame

-- Properti SideFrameTitle
SideFrameTitle.Name = "SideFrameTitle"
SideFrameTitle.Parent = SideFrame
SideFrameTitle.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
SideFrameTitle.BackgroundTransparency = 1
SideFrameTitle.Position = UDim2.new(0, 0, 0, 0)
SideFrameTitle.Size = UDim2.new(1, 0, 0.1, 0)
SideFrameTitle.Font = Enum.Font.SourceSansBold
SideFrameTitle.Text = "Scripts"
SideFrameTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SideFrameTitle.TextSize = 25

-- Properti ScriptBoxContainer
ScriptBoxContainer.Name = "ScriptBoxContainer"
ScriptBoxContainer.Parent = MainFrame
ScriptBoxContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
ScriptBoxContainer.Position = UDim2.new(0.3, 0, 0.15, 0)
ScriptBoxContainer.Size = UDim2.new(0.65, 0, 0.6, 0)
ScriptBoxContainer.CanvasSize = UDim2.new(1, 0, 1, 0)
ScriptBoxContainer.ScrollBarThickness = 6
ScriptBoxContainer.ScrollingDirection = Enum.ScrollingDirection.XY

-- Properti LineNumbers
LineNumbers.Name = "LineNumbers"
LineNumbers.Parent = ScriptBoxContainer
LineNumbers.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
LineNumbers.Size = UDim2.new(0, 30, 1, 0)
LineNumbers.Font = Enum.Font.SourceSans
LineNumbers.Text = "1"
LineNumbers.TextColor3 = Color3.fromRGB(85, 170, 255)
LineNumbers.TextSize = 25
LineNumbers.TextXAlignment = Enum.TextXAlignment.Center
LineNumbers.TextYAlignment = Enum.TextYAlignment.Top

-- Properti ScriptBox
ScriptBox.Name = "ScriptBox"
ScriptBox.Parent = ScriptBoxContainer
ScriptBox.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
ScriptBox.Position = UDim2.new(0, 35, 0, 0)  -- Memposisikan ScriptBox di sebelah kanan LineNumbers
ScriptBox.Size = UDim2.new(1, -30, 1, 0)
ScriptBox.Font = Enum.Font.SourceSans
ScriptBox.Text = "Write the script here"
ScriptBox.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptBox.TextSize = 25
ScriptBox.TextWrapped = false
ScriptBox.ClearTextOnFocus = false
ScriptBox.MultiLine = true
ScriptBox.TextXAlignment = Enum.TextXAlignment.Left
ScriptBox.TextYAlignment = Enum.TextYAlignment.Top

-- Menambahkan UICorner untuk ScriptBox
local ScriptBoxCorner = UICorner:Clone()
ScriptBoxCorner.Parent = ScriptBox

-- Update ukuran ScriptBox dan ScriptBoxContainer saat teks berubah, serta update nomor baris
ScriptBox:GetPropertyChangedSignal("Text"):Connect(function()
    local textSize = game:GetService("TextService"):GetTextSize(ScriptBox.Text, ScriptBox.TextSize, ScriptBox.Font, Vector2.new(ScriptBox.AbsoluteSize.X, math.huge))
    ScriptBox.Size = UDim2.new(1, -30, 0, textSize.Y)
    ScriptBoxContainer.CanvasSize = UDim2.new(0, 0, 0, textSize.Y)

    -- Update nomor baris
    local lineCount = #ScriptBox.Text:split("\n")
    local lineNumberText = ""
    for i = 1, lineCount do
        lineNumberText = lineNumberText .. i .. "\n"
    end
    LineNumbers.Text = lineNumberText
end)

-- Properti ExecuteButton
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = MainFrame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ExecuteButton.Position = UDim2.new(0.46, 0, 0.8, 0)
ExecuteButton.Size = UDim2.new(0.33, 0, 0.1, 0)
ExecuteButton.Font = Enum.Font.SourceSans
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 25

-- Menambahkan UICorner untuk ExecuteButton
local ExecuteButtonCorner = UICorner:Clone()
ExecuteButtonCorner.Parent = ExecuteButton

-- Menambahkan dropshadow untuk ExecuteButton
addDropShadow(ExecuteButton)

-- Properti ClearButton
ClearButton.Name = "ClearButton"
ClearButton.Parent = MainFrame
ClearButton.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ClearButton.Position = UDim2.new(0.3, 0, 0.8, 0)
ClearButton.Size = UDim2.new(0.15, 0, 0.1, 0)
ClearButton.Font = Enum.Font.SourceSans
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 25

-- Menambahkan UICorner untuk ClearButton
local ClearButtonCorner = UICorner:Clone()
ClearButtonCorner.Parent = ClearButton

-- Menambahkan dropshadow untuk ClearButton
addDropShadow(ClearButton)

-- Properti CloseButton
CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 85, 85)
CloseButton.Position = UDim2.new(0.80, 0, 0.8, 0)
CloseButton.Size = UDim2.new(0.15, 0, 0.1, 0)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.Text = "Close"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 25

-- Menambahkan UICorner untuk CloseButton
local CloseButtonCorner = UICorner:Clone()
CloseButtonCorner.Parent = CloseButton

-- Menambahkan dropshadow untuk CloseButton
addDropShadow(CloseButton)

-- Properti TextLabel
TextLabel.Name = "TitleLabel"
TextLabel.Parent = MainFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.3, 0, 0.02, 0)
TextLabel.Size = UDim2.new(0.65, 0, 0.1, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "My Dumbass Roblox Executor"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30

-- Logging counters
local successCount = 0
local errorCount = 0

-- Fungsi Eksekusi Script
ExecuteButton.MouseButton1Click:Connect(function()
    local scriptToExecute = ScriptBox.Text
    if scriptToExecute ~= "" then
        local function safeExecute(script)
            local success, errorMessage = pcall(function()
                loadstring(script)()
            end)
            if success then
                successCount = successCount + 1
                print("Script executed successfully.")
            else
                errorCount = errorCount + 1
                warn("An error occurred while executing the script: "..errorMessage)
            end
        end
        safeExecute(scriptToExecute)
    else
        print("No script found!")
    end
end)

-- Fungsi Clear ScriptBox
ClearButton.MouseButton1Click:Connect(function()
    ScriptBox.Text = ""
end)

-- Fungsi Close GUI
CloseButton.MouseButton1Click:Connect(function()
    local totalCount = successCount + errorCount
    local successPercentage = (totalCount > 0) and (successCount / totalCount) * 100 or 0
    local errorPercentage = (totalCount > 0) and (errorCount / totalCount) * 100 or 0
    print("Execution Summary: ")
    print("Scripts executed successfully: "..successCount.." ("..string.format("%.2f", successPercentage).."% )")
    print("Scripts execution errors: "..errorCount.." ("..string.format("%.2f", errorPercentage).."% )")
    ScreenGui:Destroy()
end)

-- Fungsi untuk menambahkan script ke ScrollingFrame
local function addScriptButton(name, script)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = ScrollingFrame
    button.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
    button.Size = UDim2.new(0.9, 0, 0.02, 0)
    button.Position = UDim2.new(0.05, 0, 0.025 * (#ScrollingFrame:GetChildren() - 2), 0)
    button.Font = Enum.Font.SourceSans
    button.Text = name
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.TextSize = 20
    button.MouseButton1Click:Connect(function()
        ScriptBox.Text = script
    end)
    -- Menambahkan UICorner untuk button
    local buttonCorner = UICorner:Clone()
    buttonCorner.Parent = button
    -- Menambahkan dropshadow untuk button
    addDropShadow(button)
end

-- Menambahkan contoh script ke ScrollingFrame
addScriptButton("CanCantHUB", [[
    -- CanCantHUB | Unnamed Shooter
loadstring(game:HttpGet("https://raw.githubusercontent.com/BeraniTakut/CanCantHUB/main/games/UnnamedShooter"))()
]])
addScriptButton("Place Id Grabber", [[
    -- Place Id Grabber
local placeId = game.PlaceId
local success, message = pcall(function()
    setclipboard(tostring(placeId))
end)

if success then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Success";
        Text = "Place ID: " .. placeId .. " has been copied to your clipboard.";
        Duration = 5;
    })
else
    game.StarterGui:SetCore("SendNotification", {
        Title = "Failed";
        Text = "Unable to copy Place ID to clipboard: " .. message;
        Duration = 5;
    })
end
]])
addScriptButton("Dark Dex v3", [[
    -- Dark Dex v3
loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
]])
addScriptButton("Simple Spy v3", [[
    -- Simple Spy v3
loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
]])