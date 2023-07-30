local Gui = game.CoreGui:FindFirstChild("ScreenGui")
if Gui then
    Gui:Destroy()
end
local ScreenGui = Instance.new("ScreenGui")
local UICORNER1 = Instance.new("UICorner")
local UICORNER11 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local Mode = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Name = "Frame"
Frame.Draggable = true
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Frame.Position = UDim2.new(0.276582837, 0, 0.0379506648, 0)
Frame.Size = UDim2.new(0, 283, 0, 106)
Frame.Visible = true
UICORNER1.Parent = Frame

local UIS = game:GetService('UserInputService')
local frame = Frame
local dragToggle = nil
local dragSpeed = 0.25
local dragStart = nil
local startPos = nil

local function updateInput(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
    startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end

frame.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
        dragToggle = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
     end
end)

UIS.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragToggle then
            updateInput(input)
        end
    end
end)

Mode.Name = "Mode"
Mode.Parent = Frame
Mode.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
Mode.Position = UDim2.new(0, 25, 0, 15)
Mode.Size = UDim2.new(0, 233, 0, 76)
Mode.Font = Enum.Font.SourceSans
Mode.Text = "MODE: None"
Mode.TextColor3 = Color3.fromRGB(0, 0, 0)
Mode.TextScaled = true
UICORNER11.Parent = Mode

local FoundHour = false
local HourScriptName = nil
while task.wait() do
    FoundHour = false
    if workspace:FindFirstChild('Rake') then
        for i,v in pairs(game.workspace.Rake:GetChildren()) do
            if v:IsA('Script') then
                if v.Disabled == false then
                    if string.match(v.Name, 'VoidMain') or string.match(v.Name, 'HourMain') or string.match(v.Name, 'ModeMain') or string.match(v.Name, 'NightMain') then
                        FoundHour = true
                        HourScriptName = v.Name
                    end
                end
            end
        end
        if FoundHour == true and HourScriptName ~= nil then
            HourScriptName = HourScriptName:gsub('HourMain',' Hour')
            HourScriptName = HourScriptName:gsub('ModeMain',' Mode')
            HourScriptName = HourScriptName:gsub('NightMain',' Night')
            HourScriptName = HourScriptName:gsub('Main',' Hour')
            Mode.Text = 'MODE: '..HourScriptName
        else
            Mode.Text = 'MODE: None'
        end
    else
        FoundHour = false
    end
end