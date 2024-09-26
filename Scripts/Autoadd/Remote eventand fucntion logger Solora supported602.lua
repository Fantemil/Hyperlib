local screenGui = Instance.new("ScreenGui")
local mainFrame = Instance.new("Frame")
local tabScrollFrame = Instance.new("ScrollingFrame")
local controlFrame = Instance.new("Frame")
local divider = Instance.new("Frame") 

local clearButton = Instance.new("TextButton")
local copyButton = Instance.new("TextButton")
local runButton = Instance.new("TextButton")
local exitButton = Instance.new("TextButton")

screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.Name = "RemoteSpy"

mainFrame.Parent = screenGui
mainFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
mainFrame.Size = UDim2.new(0, 600, 0, 400)
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
mainFrame.Active = true  

tabScrollFrame.Parent = mainFrame
tabScrollFrame.Size = UDim2.new(0.2, 0, 1, -40)
tabScrollFrame.Position = UDim2.new(0, 0, 0, 0)
tabScrollFrame.BackgroundTransparency = 1
tabScrollFrame.ScrollBarThickness = 10

controlFrame.Parent = mainFrame
controlFrame.Size = UDim2.new(0.8, 0, 1, -40)
controlFrame.Position = UDim2.new(0.2, 0, 0, 0)
controlFrame.BackgroundTransparency = 1

divider.Parent = controlFrame
divider.Size = UDim2.new(1, 0, 0, 1)
divider.Position = UDim2.new(0, 0, 0, 0)
divider.BackgroundColor3 = Color3.new(1, 1, 1)

clearButton.Parent = mainFrame
clearButton.Size = UDim2.new(0.2, -5, 0, 30)
clearButton.Position = UDim2.new(0.75, 5, 1, -35)
clearButton.Text = "Clear Logs"
clearButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
clearButton.TextColor3 = Color3.new(1, 1, 1)
clearButton.Font = Enum.Font.SourceSans
clearButton.TextSize = 18

copyButton.Parent = mainFrame
copyButton.Size = UDim2.new(0.2, -5, 0, 30)
copyButton.Position = UDim2.new(0.25, 5, 1, -35)
copyButton.Text = "Copy Logs"
copyButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
copyButton.TextColor3 = Color3.new(1, 1, 1)
copyButton.Font = Enum.Font.SourceSans
copyButton.TextSize = 18

runButton.Parent = mainFrame
runButton.Size = UDim2.new(0.2, -5, 0, 30)
runButton.Position = UDim2.new(0.5, 0, 1, -35)
runButton.Text = "Run"
runButton.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
runButton.TextColor3 = Color3.new(1, 1, 1)
runButton.Font = Enum.Font.SourceSans
runButton.TextSize = 18

exitButton.Parent = mainFrame
exitButton.Size = UDim2.new(0, 30, 0, 30)
exitButton.Position = UDim2.new(1, -35, 0, 5)
exitButton.Text = "X"
exitButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
exitButton.TextColor3 = Color3.new(1, 1, 1)
exitButton.Font = Enum.Font.SourceSans
exitButton.TextSize = 18

exitButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Title for the UI
local title = Instance.new("TextLabel")
title.Parent = mainFrame
title.Size = UDim2.new(1, 0, 0, 30)
title.Position = UDim2.new(0, 0, -1, 0) -- Move the title above the textbox
title.Text = "RemoteSpy"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextSize = 20
title.BackgroundTransparency = 1

-- Function to create a tab for each remote
local function createTab(remoteType, remoteName, args)
    local tab = Instance.new("TextButton")  -- Use TextButton instead of Frame for clickable tabs
    local titleLabel = Instance.new("TextLabel")
    
    tab.Parent = tabScrollFrame
    tab.Size = UDim2.new(1, 0, 0, 30)
    tab.Position = UDim2.new(0, 0, 0, #tabScrollFrame:GetChildren() * 35)
    tab.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    tab.AutoButtonColor = false  -- Prevents the button color from changing on click
    
    titleLabel.Parent = tab
    titleLabel.Size = UDim2.new(1, 0, 1, 0)
    titleLabel.Position = UDim2.new(0, 5, 0, 0)
    titleLabel.Text = remoteName
    titleLabel.TextColor3 = Color3.new(1, 1, 1)
    titleLabel.Font = Enum.Font.SourceSans
    titleLabel.TextSize = 14
    titleLabel.BackgroundTransparency = 1
    
    -- Handle tab click event
    tab.MouseButton1Click:Connect(function()
        for _, child in ipairs(controlFrame:GetChildren()) do
            if child:IsA("Frame") then
                child:Destroy()
            end
        end
        
        local detailBox = Instance.new("Frame")  -- Use Frame instead of TextBox
        detailBox.Parent = controlFrame
        detailBox.Size = UDim2.new(1, -10, 1, -10)
        detailBox.Position = UDim2.new(0, 5, 0, 5)
        detailBox.BackgroundTransparency = 0.3
        detailBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        
        local detailLabel = Instance.new("TextLabel")
        detailLabel.Parent = detailBox
        detailLabel.Size = UDim2.new(1, 0, 1, 0)
        detailLabel.Position = UDim2.new(0, 0, 0, 0)
        detailLabel.Text = "Full Remote Details:\n\n" .. table.concat(args, "\n")
        detailLabel.TextWrapped = true
        detailLabel.TextYAlignment = Enum.TextYAlignment.Top
        detailLabel.TextXAlignment = Enum.TextXAlignment.Left
        detailLabel.TextColor3 = Color3.new(1, 1, 1)
        detailLabel.Font = Enum.Font.Code
        detailLabel.TextSize = 14
    end)
end

-- Function to make the mainFrame draggable
local dragging = false
local dragInput
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        dragInput = input
        updateInput(dragInput)
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

local selectedRemote = nil

local function printArguments(...)
    local args = {...}
    local formattedArgs = {}
    for i, arg in ipairs(args) do
        table.insert(formattedArgs, string.format("Argument %d: %s", i, tostring(arg)))
    end
    return formattedArgs
end

local function printRemoteCall(remoteType, remoteName, printFunc, ...)
    createTab(remoteType, remoteName, printArguments(...))
end

local function wrapRemote(remote)
    if remote:IsA("RemoteEvent") then
        remote.OnClientEvent:Connect(function(...)
            printRemoteCall("RemoteEvent", remote.Name, warn, ...)
        end)
    elseif remote:IsA("RemoteFunction") then
        remote.OnClientInvoke = function(...)
            printRemoteCall("RemoteFunction", remote.Name, error, ...)
        end
    end
end

local function wrapRemotesInFolder(folder)
    for _, obj in ipairs(folder:GetDescendants()) do
        if obj:IsA("RemoteEvent") or obj:IsA("RemoteFunction") then
            wrapRemote(obj)
        end
    end
    folder.DescendantAdded:Connect(function(descendant)
        if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
            wrapRemote(descendant)
        end
    end)
end

-- Wrap all existing remotes in the game and ReplicatedStorage
wrapRemotesInFolder(game)
wrapRemotesInFolder(game:GetService("ReplicatedStorage"))

-- Listen for new remotes being added
game.DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)

game:GetService("ReplicatedStorage").DescendantAdded:Connect(function(descendant)
    if descendant:IsA("RemoteEvent") or descendant:IsA("RemoteFunction") then
        wrapRemote(descendant)
    end
end)

