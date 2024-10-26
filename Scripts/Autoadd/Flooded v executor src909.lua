 -- Gui to Lua
-- Version: 3.2

-- Instances:

local Flooded = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local BAR = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Home = Instance.new("ImageButton")
local ScriptHub = Instance.new("ImageButton")
local Console = Instance.new("ImageButton")
local Executer = Instance.new("Frame")
local ScriptInput = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local TextButton_3 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local ScriptHubFrame = Instance.new("Frame")
local Console_2 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local title = Instance.new("TextLabel")
local UICorner_6 = Instance.new("UICorner")
local topbar = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Settings = Instance.new("ImageButton")
local UICorner_8 = Instance.new("UICorner")
local TextButton_4 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Seetings = Instance.new("Frame")
local Speed = Instance.new("TextLabel")
local speedCon = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")
local speedset = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local JumpCon = Instance.new("TextBox")
local UICorner_12 = Instance.new("UICorner")
local Jump = Instance.new("TextLabel")
local JumpSet = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local TextButton_5 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local TextButton_6 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_16 = Instance.new("UICorner")
local TextButton_7 = Instance.new("TextButton")
local Search = Instance.new("ImageButton")
local SearchFrame = Instance.new("Frame")

--Properties:

Flooded.ResetOnSpawn = false

Flooded.Name = "Flooded"
Flooded.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Flooded.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Flooded.ResetOnSpawn = false
Flooded.Parent = gethui()

MainFrame.Name = "MainFrame"
MainFrame.Parent = Flooded
MainFrame.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.15633297, -44, 0.0564282313, -27)
MainFrame.Size = UDim2.new(0.818025708, 0, 1, 0)

UICorner.CornerRadius = UDim.new(0, 23)
UICorner.Parent = MainFrame

BAR.Name = "BAR"
BAR.Parent = MainFrame
BAR.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BAR.Position = UDim2.new(0.0367774256, 0, 0.162784129, 0)
BAR.Size = UDim2.new(0, 79, 0, 193)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = BAR

Home.Name = "Home"
Home.Parent = BAR
Home.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Home.Position = UDim2.new(0.189873412, 0, 0.0714285746, 0)
Home.Size = UDim2.new(0.607594907, 0, 0.194444448, 0)
Home.Image = "rbxassetid://11263246584"

ScriptHub.Name = "ScriptHub"
ScriptHub.Parent = BAR
ScriptHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptHub.Position = UDim2.new(0.189873368, 0, 0.376984119, 0)
ScriptHub.Size = UDim2.new(0.607594907, 0, 0.214285716, 0)
ScriptHub.Image = "rbxassetid://11570626761"

Console.Name = "Console"
Console.Parent = BAR
Console.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Console.Position = UDim2.new(0.189873368, 0, 0.674376965, 0)
Console.Size = UDim2.new(0.607594907, 0, 0.214285716, 0)
Console.Image = "rbxassetid://7128117167"
Console.ImageColor3 = Color3.fromRGB(0, 0, 0)

Executer.Name = "Executer"
Executer.Parent = MainFrame
Executer.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
Executer.BorderColor3 = Color3.fromRGB(64, 148, 161)
Executer.Position = UDim2.new(0.215481207, 0, 0.138157919, 0)
Executer.Visible = true
Executer.Size = UDim2.new(0.723849356, 0, 0.809210539, 0)

ScriptInput.Name = "ScriptInput"
ScriptInput.Parent = Executer
ScriptInput.BackgroundColor3 = Color3.fromRGB(24, 50, 99)
ScriptInput.BorderColor3 = Color3.fromRGB(255, 255, 255)
ScriptInput.Position = UDim2.new(0.0578034669, 0, 0.0569105372, 0)
ScriptInput.Size = UDim2.new(0.910404623, 0, 0.66260165, 0)
ScriptInput.Font = Enum.Font.SourceSans
ScriptInput.Text = "--Fixed By Nath.#4468"
ScriptInput.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptInput.TextSize = 16.000
ScriptInput.TextWrapped = true
ScriptInput.ClearTextOnFocus = false
ScriptInput.TextXAlignment = Enum.TextXAlignment.Left
ScriptInput.TextYAlignment = Enum.TextYAlignment.Top

TextButton.Parent = Executer
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.Position = UDim2.new(0.0578034669, 0, 0.796747983, 0)
TextButton.Size = UDim2.new(0.28323698, 0, 0.166666672, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Execute Text"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000

local function ExecuteScript(script)
    local f, err = loadstring(script)
    if f then
    f()
        game.StarterGui:SetCore("SendNotification", {
            Title = "Flooded Android",
            Text = "Script Executed",
            Duration = 3
        })
    else
        print("Script execution error:", err)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Flooded Android",
            Text = "Script Error",
            Duration = 3
        })
    end
end
 
-- Connect the execute button to the script execution function
TextButton.MouseButton1Click:Connect(function()
    local script = ScriptInput.Text
    ExecuteScript(script)
end)

UICorner_3.CornerRadius = UDim.new(0, 13)
UICorner_3.Parent = TextButton

TextButton_2.Parent = Executer
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.Position = UDim2.new(0.369942188, 0, 0.796747983, 0)
TextButton_2.Size = UDim2.new(0.28323698, 0, 0.166666672, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Clear"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 14.000

TextButton_2.MouseButton1Click:Connect(function()
    ScriptInput.Text = ""
end)

UICorner_4.CornerRadius = UDim.new(0, 13)
UICorner_4.Parent = TextButton_2

TextButton_3.Parent = Executer
TextButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.Position = UDim2.new(0.684971094, 0, 0.796747983, 0)
TextButton_3.Size = UDim2.new(0.28323698, 0, 0.166666672, 0)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Execute ClipBoard"
TextButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.TextSize = 14.000

TextButton_3.MouseButton1Click:Connect(function()
loadstring(getclipboard())()
game.StarterGui:SetCore("SendNotification", {
        Title = "Flooded Android";
        Text = "Script Executed From Clipboard";
        Duration = 3;
    })
end)

UICorner_5.CornerRadius = UDim.new(0, 13)
UICorner_5.Parent = TextButton_3

ScriptHubFrame.Name = "ScriptHubFrame"
ScriptHubFrame.Parent = MainFrame
ScriptHubFrame.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
ScriptHubFrame.BorderColor3 = Color3.fromRGB(64, 148, 161)
ScriptHubFrame.Position = UDim2.new(0.223849416, 0, 0.15789476, 0)
ScriptHubFrame.Visible = false
ScriptHubFrame.Size = UDim2.new(0.723849356, 0, 0.809210539, 0)

-- Create the scrolling frame for the script list
local scriptList = Instance.new("ScrollingFrame")
scriptList.Name = "ScriptList"
scriptList.Position = UDim2.new(0, 10, 0, 10)
scriptList.Size = UDim2.new(1, -20, 1.2, -80)
scriptList.BackgroundTransparency = 0.8
scriptList.BackgroundColor3 = Color3.new(0, 0, 0)
scriptList.CanvasSize = UDim2.new(0, 0, 0, 0)
scriptList.ScrollBarThickness = 10
scriptList.Parent = ScriptHubFrame

-- Create the script input textbox
local scriptInput = Instance.new("TextBox")
scriptInput.Name = "ScriptInput"
scriptInput.Size = UDim2.new(0.699999988, -10, 0, 30)
scriptInput.Position = UDim2.new(0, 10, 1.20000005, -40)
scriptInput.AnchorPoint = Vector2.new(0, 1)
scriptInput.BackgroundColor3 = Color3.new(255, 255, 255)
scriptInput.TextColor3 = Color3.new(0, 0, 0)
scriptInput.Font = Enum.Font.SourceSans
scriptInput.TextSize = 16
scriptInput.TextWrapped = true
scriptInput.Text = ""
scriptInput.PlaceholderText = "Enter script code..."
scriptInput.ClearTextOnFocus = false
scriptInput.Parent = ScriptHubFrame

-- Create the add script button
local addButton = Instance.new("TextButton")
addButton.Name = "AddButton"
addButton.Size = UDim2.new(0, 100, 0, 30)
addButton.Position = UDim2.new(1, 10, 1.03, 0)
addButton.AnchorPoint = Vector2.new(1, 1)
addButton.BackgroundColor3 = Color3.new(255, 255, 255)
addButton.TextColor3 = Color3.new(0, 0, 0)
addButton.Font = Enum.Font.SourceSansBold
addButton.TextSize = 16
addButton.Text = "Add Script"
addButton.Parent = ScriptHubFrame

-- Function to add a script to the script hub
local function addScript(title, scriptCode)
    local scriptFrame = Instance.new("Frame")
    scriptFrame.Name = "ScriptFrame"
    scriptFrame.Size = UDim2.new(1, -20, 0, 60)
    scriptFrame.Position = UDim2.new(0, 10, 0, #scriptList:GetChildren() * 70)
    scriptFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    scriptFrame.Parent = scriptList

    local scriptButton = Instance.new("TextButton")
    scriptButton.Name = "ScriptButton"
    scriptButton.Size = UDim2.new(1, 0, 1, 0)
    scriptButton.BackgroundTransparency = 1
    scriptButton.BackgroundColor3 = Color3.new(255, 255, 255)
    scriptButton.Text = title
    scriptButton.Font = Enum.Font.SourceSans
    scriptButton.TextSize = 50
    scriptButton.TextColor3 = Color3.new(0, 0, 0)
    scriptButton.TextWrapped = true
    scriptButton.Parent = scriptFrame

    scriptButton.MouseButton1Click:Connect(function()
        -- Execute the scriptCode when the button is clicked
        local success, err = pcall(function()
            loadstring(scriptCode)()
        end)
        
        if not success then
            warn("Error executing script:", err)
        end
    end)

    local deleteButton = Instance.new("TextButton")
    deleteButton.Name = "DeleteButton"
    deleteButton.Size = UDim2.new(0, 80, 0, 50)
    deleteButton.Position = UDim2.new(1, 0, 0.5, 0)
    deleteButton.AnchorPoint = Vector2.new(1, 0.5)
    deleteButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
    deleteButton.TextColor3 = Color3.new(1, 1, 1)
    deleteButton.Font = Enum.Font.SourceSansBold
    deleteButton.TextSize = 16
    deleteButton.Text = "X"
    deleteButton.Parent = scriptButton

    deleteButton.MouseButton1Click:Connect(function()
        -- Remove the script from the script hub
        scriptFrame:Destroy()
    end)

    scriptList.CanvasSize = UDim2.new(0, 0, 0, #scriptList:GetChildren() * 70)
end

addButton.MouseButton1Click:Connect(function()
    local scriptTitle = "Untitled"
    local scriptCode = scriptInput.Text

    if scriptCode ~= "" then
        local titlePrompt = Instance.new("TextBox")
        titlePrompt.Name = "TitlePrompt"
        titlePrompt.Size = UDim2.new(0, 200, 0, 30)
        titlePrompt.Position = UDim2.new(0.5, -100, 0.5, -15)
        titlePrompt.AnchorPoint = Vector2.new(0.5, 0.5)
        titlePrompt.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
        titlePrompt.TextColor3 = Color3.new(1, 1, 1)
        titlePrompt.Font = Enum.Font.SourceSans
        titlePrompt.TextSize = 16
        titlePrompt.PlaceholderText = "Title"
        titlePrompt.Text = ""
        titlePrompt.Parent = ScriptHubFrame

        local function handlePromptSubmit()
            scriptTitle = titlePrompt.Text
            titlePrompt:Destroy()

            addScript(scriptTitle, scriptCode)
        end

        titlePrompt.FocusLost:Connect(handlePromptSubmit)
    end
end)

Console_2.Name = "Console"
Console_2.Parent = MainFrame
Console_2.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
Console_2.BorderColor3 = Color3.fromRGB(64, 148, 161)
Console_2.Position = UDim2.new(0.224282146, 0, 0.183154821, 0)
Console_2.Visible = false
Console_2.Size = UDim2.new(0.723849356, 0, 0.809210539, 0)

-- Create the ScrollingFrame
local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.Parent = Console_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
ScrollingFrame.Position = UDim2.new(0.0766660869, 0, 0.0338661745, 0)
ScrollingFrame.Size = UDim2.new(0, 352, 0, 205)
ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.Always
ScrollingFrame.ScrollBarThickness = 10

-- Create the inner Frame for content and scrolling
local Frame = Instance.new("Frame")
Frame.BackgroundTransparency = 1
Frame.Size = UDim2.new(1, -10, 1, 0) -- Subtract 10 pixels for the width of the scroll bar
Frame.Position = UDim2.new(0, 0, 0, 0)
Frame.Parent = ScrollingFrame

-- Create a UIListLayout to handle scrolling and layout of the text labels
local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Frame

-- Function to add new lines of text to the ScrollingFrame
local function AddTextLine(text)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Size = UDim2.new(1, 0, 0, 20)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Text = text
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Top
    TextLabel.TextSize = 14
    TextLabel.TextColor3 = Color3.new(0, 0, 0) -- Set text color to black
    TextLabel.Parent = Frame

    -- Update the ScrollingFrame's CanvasSize
    ScrollingFrame.CanvasSize = UDim2.new(0, UIListLayout.AbsoluteContentSize.X, 0, UIListLayout.AbsoluteContentSize.Y)
end

-- Redirect console output to the ScrollingFrame
local function ConsoleOutput(message, messageType)
    if messageType == Enum.MessageType.MessageOutput then
        local time = os.date("%H:%M:%S") -- Get the current time
        AddTextLine("[" .. time .. "] " .. message) -- Add time prefix to the message
    end
end

game:GetService("LogService").MessageOut:Connect(ConsoleOutput)



title.Name = "title"
title.Parent = MainFrame
title.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
title.BorderColor3 = Color3.fromRGB(64, 148, 161)
title.Position = UDim2.new(0.0145368073, 0, 0.0427631587, 0)
title.Size = UDim2.new(0.301255226, 0, 0.0756578967, 0)
title.Font = Enum.Font.SourceSans
title.Text = "Flooded V"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 40.000
title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_6.CornerRadius = UDim.new(0, 23)
UICorner_6.Parent = title

topbar.Name = "top bar"
topbar.Parent = MainFrame
topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
topbar.Position = UDim2.new(0.324267775, 0, 0.032894738, 0)
topbar.Size = UDim2.new(0.64853555, 0, 0.125, 0)

UICorner_7.CornerRadius = UDim.new(0, 23)
UICorner_7.Parent = topbar

TextLabel.Parent = topbar
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.0419354253, 0, 0.131578937, 0)
TextLabel.Size = UDim2.new(0, 94, 0, 22)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Version: BetaV2"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 14.000

Settings.Name = "Settings"
Settings.Parent = topbar
Settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Settings.Position = UDim2.new(0.699999988, 0, 0.0789473802, 0)
Settings.Size = UDim2.new(0.106451616, 0, 0.815789461, 0)
Settings.Image = "rbxassetid://7059346373"
Settings.ImageColor3 = Color3.fromRGB(0, 0, 0)

UICorner_8.CornerRadius = UDim.new(0, 100)
UICorner_8.Parent = Settings

TextButton_4.Parent = topbar
TextButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.Position = UDim2.new(0.870967746, 0, 0.0789473653, 0)
TextButton_4.Size = UDim2.new(0.0903225839, 0, 0.736842096, 0)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "X"
TextButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.TextSize = 50.000

UICorner_9.CornerRadius = UDim.new(0, 100)
UICorner_9.Parent = TextButton_4

Seetings.Name = "Seetings"
Seetings.Parent = MainFrame
Seetings.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
Seetings.BorderColor3 = Color3.fromRGB(64, 148, 161)
Seetings.Position = UDim2.new(0.191640079, 0, 0.161003232, 0)
Seetings.Visible = false
Seetings.Size = UDim2.new(0.791705072, 0, 0.809210539, 0)

Speed.Name = "Speed"
Speed.Parent = Seetings
Speed.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
Speed.BorderColor3 = Color3.fromRGB(64, 148, 161)
Speed.Position = UDim2.new(0.0107135521, 0, 0, 0)
Speed.Size = UDim2.new(0, 200, 0, 50)
Speed.Font = Enum.Font.SourceSans
Speed.Text = "Speed"
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextSize = 50.000
Speed.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextXAlignment = Enum.TextXAlignment.Left

speedCon.Name = "speedCon"
speedCon.Parent = Seetings
speedCon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
speedCon.Position = UDim2.new(0.275087982, 0, 0.0397053882, 0)
speedCon.Size = UDim2.new(0, 52, 0, 36)
speedCon.Font = Enum.Font.SourceSans
speedCon.Text = ""
speedCon.TextColor3 = Color3.fromRGB(255, 255, 255)
speedCon.TextSize = 14.000
speedCon.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_10.CornerRadius = UDim.new(0, 100)
UICorner_10.Parent = speedCon

speedset.Name = "speed set"
speedset.Parent = Seetings
speedset.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
speedset.Position = UDim2.new(0.415685654, 0, 0.030407235, 0)
speedset.Size = UDim2.new(0, 49, 0, 35)
speedset.Font = Enum.Font.SourceSans
speedset.Text = "Set"
speedset.TextColor3 = Color3.fromRGB(0, 0, 0)
speedset.TextSize = 14.000

UICorner_11.CornerRadius = UDim.new(0, 100)
UICorner_11.Parent = speedset

JumpCon.Name = "JumpCon"
JumpCon.Parent = Seetings
JumpCon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
JumpCon.Position = UDim2.new(0.276182711, 0, 0.294774115, 0)
JumpCon.Size = UDim2.new(0, 52, 0, 36)
JumpCon.Font = Enum.Font.SourceSans
JumpCon.Text = ""
JumpCon.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpCon.TextSize = 14.000
JumpCon.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

UICorner_12.CornerRadius = UDim.new(0, 100)
UICorner_12.Parent = JumpCon

Jump.Name = "Jump"
Jump.Parent = Seetings
Jump.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
Jump.BorderColor3 = Color3.fromRGB(64, 148, 161)
Jump.Position = UDim2.new(0.0107134581, 0, 0.25677219, 0)
Jump.Size = UDim2.new(0, 110, 0, 50)
Jump.Font = Enum.Font.SourceSans
Jump.Text = "Jump"
Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextSize = 50.000
Jump.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Jump.TextXAlignment = Enum.TextXAlignment.Left

JumpSet.Name = "JumpSet"
JumpSet.Parent = Seetings
JumpSet.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpSet.Position = UDim2.new(0.415685654, 0, 0.30069375, 0)
JumpSet.Size = UDim2.new(0, 49, 0, 35)
JumpSet.Font = Enum.Font.SourceSans
JumpSet.Text = "Set"
JumpSet.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpSet.TextSize = 14.000

UICorner_13.CornerRadius = UDim.new(0, 100)
UICorner_13.Parent = JumpSet

TextButton_5.Parent = Seetings
TextButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.Position = UDim2.new(0.0621385984, 0, 0.493272841, 0)
TextButton_5.Size = UDim2.new(0, 377, 0, 50)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Credits"
TextButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.TextSize = 14.000

UICorner_14.CornerRadius = UDim.new(0, 100)
UICorner_14.Parent = TextButton_5

TextButton_6.Parent = Seetings
TextButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.Position = UDim2.new(0.0621385984, 0, 0.753894389, 0)
TextButton_6.Size = UDim2.new(0, 377, 0, 50)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Discord"
TextButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.TextSize = 14.000

UICorner_15.CornerRadius = UDim.new(0, 100)
UICorner_15.Parent = TextButton_6

ImageButton.Parent = Flooded
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(0.0156995207, 0, 0.186494187, 0)
ImageButton.Size = UDim2.new(0, 31, 0, 30)
ImageButton.Draggable = true
ImageButton.Visible = false
ImageButton.Image = "rbxassetid://13653511742"

UICorner_16.Parent = ImageButton

Search.Name = "Search"
Search.Parent = topbar
Search.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Search.Position = UDim2.new(0.5, 0, 0.0789473802, 0)
Search.Size = UDim2.new(0.106451616, 0, 0.815789461, 0)
Search.Image = "rbxassetid://13710126939"
Search.ImageColor3 = Color3.fromRGB(0, 0, 0)
Search.BorderSizePixel = 0

SearchFrame.Name = "SearchFrame"
SearchFrame.Parent = MainFrame
SearchFrame.BackgroundColor3 = Color3.fromRGB(64, 148, 161)
SearchFrame.BorderColor3 = Color3.fromRGB(64, 148, 161)
SearchFrame.Position = UDim2.new(0.191640079, 0, 0.161003232, 0)
SearchFrame.Visible = false
SearchFrame.Size = UDim2.new(0.791705072, 0, 0.809210539, 0)

-- Scripts:

local function MOCFHH_fake_script() -- MainFrame.LocalScript 
	local script = Instance.new('LocalScript', MainFrame)

	script.Parent.Draggable = true
	script.Parent.Active = true
end
coroutine.wrap(MOCFHH_fake_script)()
local function IXMRP_fake_script() -- ImageButton.LocalScript 
	local script = Instance.new('LocalScript', ImageButton)

	local function QOSUZQO_fake_script() -- Flooded.LocalScript 
		local script = Instance.new('LocalScript', MainFrame)
	
		script.Parent.Draggable = true
		script.Parent.Active = true
	end
	coroutine.wrap(QOSUZQO_fake_script)()
end
coroutine.wrap(IXMRP_fake_script)()

local function HomeClick()
	Console_2.Visible = false
	ScriptHubFrame.Visible = false
	Executer.Visible = true
	Seetings.Visible = false
	SearchFrame.Visible = false
end

local function ScriptHubClick()
	Console_2.Visible = false
	ScriptHubFrame.Visible = true
	Executer.Visible = false
	Seetings.Visible = false
	SearchFrame.Visible = false
end

local function ConsoleClick()
	Console_2.Visible = true
	ScriptHubFrame.Visible = false
	Executer.Visible = false
	Seetings.Visible = false
	SearchFrame.Visible = false
end

local function SettingsClick()
	Console_2.Visible = false
	ScriptHubFrame.Visible = false
	Executer.Visible = false
	Seetings.Visible = true
	SearchFrame.Visible = false
end

local function TextButton_4Click()
	ImageButton.Visible = true
	MainFrame.Visible = false
end

local function ImageButtonClick()
	ImageButton.Visible = false
	MainFrame.Visible = true
end

-- Update the speed setting
local function UpdateSpeed()
    local speed = tonumber(speedCon.Text)
    if speed then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
    end
end

speedCon.FocusLost:Connect(UpdateSpeed)
speedCon:GetPropertyChangedSignal("Text"):Connect(UpdateSpeed)

TextButton_5.MouseButton1Click:Connect(function()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Credits:",
        Text = "Cm And SuperSonic, Powerd", -- Replace with your desired text
        Duration = 5,
    })
    
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Fixed:",
        Text = "fixed by Nath.#4468", -- Replace with your desired text
        Duration = 5,
    })
end)

TextButton_6.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/EEDQu45n")
    print("Mouse button 1 clicked on TextButton_6")
end)

-- Animate the beta text with a typing animation (repeated)
local function AnimateBetaText()
    local text = "Version: Beta V2" -- The text to type
    local delayBetweenChars = 0.1 -- Adjust the delay between typing each character (in seconds)
    local delayBetweenRepeats = 1 -- Adjust the delay between each repeat (in seconds)

    while true do
        -- Hide the text initially
        TextLabel.TextTransparency = 1

        -- Type the characters one by one
        for i = 1, #text do
            TextLabel.Text = string.sub(text, 1, i) -- Set the text up to the current character
            TextLabel.TextTransparency = 0 -- Show the character
            wait(delayBetweenChars) -- Pause between typing each character
        end

        -- Pause before the next repeat
        wait(delayBetweenRepeats)

        -- Clear the text
        TextLabel.Text = ""
    end
end

spawn(AnimateBetaText)

JumpSet.MouseButton1Click:Connect(function()
    local jumpHeight = tonumber(JumpCon.Text)
    if jumpHeight then
        local character = game.Players.LocalPlayer.Character
        if character and character:FindFirstChild("Humanoid") then
            character.Humanoid.JumpPower = jumpHeight
        end
    else
        -- Handle invalid input here if desired
    end
end)

TextButton_3.MouseButton1Click:Connect(function()
    local script = ScriptInput.Text
   
    if script == "" then
        script = game:GetService("ClipboardService"):GetContents()
    end
    

    if script ~= "" then
        ExecuteScript(script)
        game.StarterGui:SetCore("SendNotification", {
            Title = "Script";
            Text = "Script Executed";
            Duration = 3;
        })
    else
        print("No script to execute.")
    end
end)

Search.MouseButton1Click:Connect(function()
    Console_2.Visible = false
	ScriptHubFrame.Visible = false
	Executer.Visible = false
	Seetings.Visible = false
	SearchFrame.Visible = true
end)
    
Home.MouseButton1Click:Connect(HomeClick)
ScriptHub.MouseButton1Click:Connect(ScriptHubClick)
Console.MouseButton1Click:Connect(ConsoleClick)
Settings.MouseButton1Click:Connect(SettingsClick)
TextButton_4.MouseButton1Click:Connect(TextButton_4Click)
ImageButton.MouseButton1Click:Connect(ImageButtonClick)
TextButton_2Button.MouseButton1Click:Connect(TextButton_2Click)
speedset.MouseButton1Click:Connect(setSpeed)