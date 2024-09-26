-- // Not Protected For Any User That Can Remake The Gui

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)

local Players = game:GetService("Players")
local NumberChat = 0
local ChatOpen = true

local function SendMessageToPublic(Message)
    local args = {
        [1] = Message,
        [2] = "All"
    }
    
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

local player = Players.LocalPlayer

local function AddUICorner(instance)
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 10)
    uiCorner.Parent = instance
end

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CustomChatGui"
screenGui.Parent = game.CoreGui

local chatFrame = Instance.new("Frame")
chatFrame.Name = "ChatFrame"
chatFrame.Size = UDim2.new(0.3, 0, 0.5, 0)
chatFrame.Position = UDim2.new(0.01, 0, 0.008, 0)
chatFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
chatFrame.BorderSizePixel = 0
chatFrame.Parent = screenGui
AddUICorner(chatFrame)

local chatDisplay = Instance.new("ScrollingFrame")
chatDisplay.Name = "ChatDisplay"
chatDisplay.Size = UDim2.new(1, 0, 0.85, 0)
chatDisplay.Position = UDim2.new(0, 0, 0, 0)
chatDisplay.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
chatDisplay.BorderSizePixel = 0
chatDisplay.CanvasSize = UDim2.new(0, 0, 0, 0)
chatDisplay.ScrollBarThickness = 6
chatDisplay.Parent = chatFrame
AddUICorner(chatDisplay)

local uiListLayout = Instance.new("UIListLayout")
uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uiListLayout.Parent = chatDisplay

local chatBar = Instance.new("TextBox")
chatBar.Name = "ChatBar"
chatBar.Size = UDim2.new(1, 0, 0.15, 0)
chatBar.Position = UDim2.new(0, 0, 0.85, 0)
chatBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
chatBar.BorderSizePixel = 0
chatBar.Text = ""
chatBar.PlaceholderText = "Type your message here..."
chatBar.TextColor3 = Color3.fromRGB(255, 255, 255)
chatBar.Font = Enum.Font.SourceSans
chatBar.TextSize = 18
chatBar.Parent = chatFrame
AddUICorner(chatBar)

local function addChatMessage(playerName, message)
    local newMessage = Instance.new("TextLabel")
    newMessage.Size = UDim2.new(1, 0, 0, 20)
    newMessage.BackgroundTransparency = 1
    newMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
    newMessage.Font = Enum.Font.SourceSans
    newMessage.TextSize = 18
    newMessage.Text = playerName .. ": " .. message
    newMessage.TextXAlignment = Enum.TextXAlignment.Left
    newMessage.Parent = chatDisplay

    chatDisplay.CanvasSize = UDim2.new(0, uiListLayout.AbsoluteContentSize.X + 20, 0, uiListLayout.AbsoluteContentSize.Y)

    if not ChatOpen then
        NumberChat = NumberChat + 1
    end
end

chatBar.FocusLost:Connect(function(enterPressed)
    if enterPressed and chatBar.Text ~= "" then
        local messageToSend = chatBar.Text
        addChatMessage(player.Name, messageToSend)
        SendMessageToPublic(messageToSend)
        chatBar.Text = ""
    end
end)

game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.OnMessageDoneFiltering.OnClientEvent:Connect(function(messageData)
    local playerName = messageData.FromSpeaker
    local message = messageData.Message
    
    if playerName ~= player.Name then
        addChatMessage(playerName, message)
    end
end)

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 35, 0, 35)
toggleButton.Position = UDim2.new(0.5, -350, 0.5, -236)
toggleButton.Text = "+"
toggleButton.TextSize = 20
toggleButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Active = true
toggleButton.Draggable = true
toggleButton.Parent = screenGui
AddUICorner(toggleButton)

local missedMessageLabel = Instance.new("TextLabel")
missedMessageLabel.Size = UDim2.new(0, 25, 0, 25)
missedMessageLabel.Position = UDim2.new(1, -10, 0, -2)
missedMessageLabel.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
missedMessageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
missedMessageLabel.Text = NumberChat
missedMessageLabel.Visible = false
missedMessageLabel.Parent = toggleButton

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 50)
uiCorner.Parent = missedMessageLabel

toggleButton.MouseButton1Click:Connect(function()
    ChatOpen = not ChatOpen
    if ChatOpen then
        chatFrame.Visible = true
        missedMessageLabel.Visible = false
        NumberChat = 0
        toggleButton.Text = "-"
    else
        chatFrame.Visible = false
        toggleButton.Text = "+"
    end
end)

local lastClickTime = 0
local DoubleClickTimeLimit = 0.5
toggleButton.MouseButton1Click:Connect(function()
    local currentTime = tick()
    if currentTime - lastClickTime <= DoubleClickTimeLimit then
        if Toggle == false then
            Toggle = true
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        else
            Toggle = false
            game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    end
    lastClickTime = currentTime
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if not ChatOpen and NumberChat > 0 then
        missedMessageLabel.Text = tostring(NumberChat)
        missedMessageLabel.Visible = true
    end
end)

repeat task.wait() until Toggle == false
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false) 