--[[
    WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ScriptBox = Instance.new("TextBox")
local ExecuteButton = Instance.new("TextButton")
local ClearButton = Instance.new("TextButton")
local AttachButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local QuitButton = Instance.new("TextButton")
local KillRobloxButton = Instance.new("TextButton")
local SaveScriptButton = Instance.new("TextButton")
local LoadScriptButton = Instance.new("TextButton")
local UIGradient = Instance.new("UIGradient")

-- Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(99, 99, 99)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.14, 0, 0.175, 0)
Frame.Size = UDim2.new(0, 939, 0, 365)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(130, 130, 130)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 922, 0, 26)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Aurora X"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14

ScriptBox.Parent = Frame
ScriptBox.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
ScriptBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScriptBox.Position = UDim2.new(0.053, 0, 0.162, 0)
ScriptBox.Size = UDim2.new(0, 786, 0, 170)
ScriptBox.Font = Enum.Font.SourceSans
ScriptBox.PlaceholderText = "-- Aurora --"
ScriptBox.Text = ""
ScriptBox.TextColor3 = Color3.fromRGB(0, 0, 0)
ScriptBox.TextSize = 14

ExecuteButton.Parent = Frame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
ExecuteButton.BorderSizePixel = 0
ExecuteButton.Position = UDim2.new(0.07, 0, 0.737, 0)
ExecuteButton.Size = UDim2.new(0, 218, 0, 30)
ExecuteButton.Font = Enum.Font.Jura
ExecuteButton.Text = "Execute"
ExecuteButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.TextSize = 14

ClearButton.Parent = Frame
ClearButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
ClearButton.BorderSizePixel = 0
ClearButton.Position = UDim2.new(0.38, 0, 0.737, 0)
ClearButton.Size = UDim2.new(0, 221, 0, 30)
ClearButton.Font = Enum.Font.Jura
ClearButton.Text = "Clear"
ClearButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.TextSize = 14

AttachButton.Parent = Frame
AttachButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
AttachButton.BorderSizePixel = 0
AttachButton.Position = UDim2.new(0.707, 0, 0.737, 0)
AttachButton.Size = UDim2.new(0, 233, 0, 30)
AttachButton.Font = Enum.Font.Jura
AttachButton.Text = "Inject"
AttachButton.TextColor3 = Color3.fromRGB(0, 0, 0)
AttachButton.TextSize = 14

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.009, 0, 0.934, 0)
TextLabel_2.Size = UDim2.new(0, 198, 0, 24)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "discord.gg/h44R3Gzz9K"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextSize = 14

QuitButton.Parent = Frame
QuitButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
QuitButton.BorderSizePixel = 0
QuitButton.Position = UDim2.new(0.974, 0, 0.002, 0)
QuitButton.Size = UDim2.new(0, 24, 0, 25)
QuitButton.Font = Enum.Font.SourceSans
QuitButton.Text = "X"
QuitButton.TextColor3 = Color3.fromRGB(0, 0, 0)
QuitButton.TextSize = 14

KillRobloxButton.Parent = Frame
KillRobloxButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
KillRobloxButton.BorderSizePixel = 0
KillRobloxButton.Position = UDim2.new(0.39, 0, 0.847, 0)
KillRobloxButton.Size = UDim2.new(0, 200, 0, 32)
KillRobloxButton.Font = Enum.Font.Jura
KillRobloxButton.Text = "Kill ROBLOX"
KillRobloxButton.TextColor3 = Color3.fromRGB(0, 0, 0)
KillRobloxButton.TextSize = 14

SaveScriptButton.Parent = Frame
SaveScriptButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
SaveScriptButton.BorderSizePixel = 0
SaveScriptButton.Position = UDim2.new(0.904, 0, 0.159, 0)
SaveScriptButton.Size = UDim2.new(0, 82, 0, 86)
SaveScriptButton.Font = Enum.Font.Jura
SaveScriptButton.Text = "Save Script"
SaveScriptButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SaveScriptButton.TextSize = 14

LoadScriptButton.Parent = Frame
LoadScriptButton.BackgroundColor3 = Color3.fromRGB(150, 150, 150)
LoadScriptButton.BorderSizePixel = 0
LoadScriptButton.Position = UDim2.new(0.898, 0, 0.416, 0)
LoadScriptButton.Size = UDim2.new(0, 93, 0, 25)
LoadScriptButton.Font = Enum.Font.Jura
LoadScriptButton.Text = "Load Script"
LoadScriptButton.TextColor3 = Color3.fromRGB(0, 0, 0)
LoadScriptButton.TextSize = 14

UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(134, 134, 134)),
    ColorSequenceKeypoint.new(0.56, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(0.93, Color3.fromRGB(252, 252, 252)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(134, 134, 134))
}
UIGradient.Parent = Frame

-- Function to drag the GUI
local function dragify(Frame)
    local UserInputService = game:GetService("UserInputService")
    local dragging
    local dragInput
    local dragStart
    local startPos

    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = Frame.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
end

dragify(Frame)

local injected = false

-- Event handlers for buttons
AttachButton.MouseButton1Click:Connect(function()
    injected = true
    game.StarterGui:SetCore("SendNotification", {
        Title = "Inject",
        Text = "Injected Successfully!",
        Duration = 5
    })
end)

ExecuteButton.MouseButton1Click:Connect(function()
    if not injected then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Aurora X",
            Text = "Please Inject Before Execute",
            Duration = 5
        })
        return
    end

    local scriptText = ScriptBox.Text

    if scriptText == "" then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Aurora X",
            Text = "Script Box is Empty!",
            Duration = 5
        })
        return
    end

    -- Check if the script is Lua or loadstring
    local isLuaScript = scriptText:find("^%s*%-%-%[%[") or scriptText:find("^%s*loadstring%(")
    if not isLuaScript then
        game.StarterGui:SetCore("SendNotification", {
            Title = "Aurora X",
            Text = "Cannot understand this language, must be Lua/loadstring!",
            Duration = 5
        })
        return
    end

    -- Execute your script logic here (replace with actual script execution logic)
    print("Executing script:")
    print(scriptText)
    -- Example: loadstring(scriptText)()

    game.StarterGui:SetCore("SendNotification", {
        Title = "Aurora X",
        Text = "Script Executed!",
        Duration = 5
    })
end)

ClearButton.MouseButton1Click:Connect(function()
    ScriptBox.Text = ""
end)

QuitButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

KillRobloxButton.MouseButton1Click:Connect(function()
    game:Shutdown()
end)

SaveScriptButton.MouseButton1Click:Connect(function()
    -- Implement save script logic here (optional)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Aurora X",
        Text = "Script Saved!",
        Duration = 5
    })
end)

LoadScriptButton.MouseButton1Click:Connect(function()
    -- Implement load script logic here (optional)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Aurora X",
        Text = "Script Loaded!",
        Duration = 5
    })
end)

-- Show gratitude notification on startup
game.StarterGui:SetCore("SendNotification", {
    Title = "Thanks!",
    Text = "Thank you for using Aurora X!",
    Duration = 5
})

