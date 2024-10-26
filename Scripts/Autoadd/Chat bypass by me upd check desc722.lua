repeat task.wait() until game:IsLoaded()

local TCS = game:GetService("TextChatService")
local CoreGui = game:GetService("CoreGui")
local RStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local isLegacy = TCS.ChatVersion == Enum.ChatVersion.LegacyChatService
local ChatBar = CoreGui:FindFirstChild("TextBoxContainer", true) or PlayerGui:FindFirstChild("Chat"):FindFirstChild("ChatBar", true)
ChatBar = ChatBar:FindFirstChild("TextBox") or ChatBar

local Keywords = {
    {"a", "Î±"},
    {"b", "b"},
    {"c", "Ñ"},
    {"d", "Ô"},
    {"e", "È©"},
    {"f", "Ò"},
    {"g", "Ô"},
    {"h", "Ò»"},
    {"i", "i"},
    {"j", "Ñ"},
    {"k", "Îº"},
    {"l", "L"},
    {"m", "Ð¼"},
    {"n", "n"},
    {"o", "Î¿"},
    {"p", "Ñ"},
    {"q", "Ô"},
    {"r", "r"},
    {"s", "Å"},
    {"t", "t"},
    {"u", "u"},
    {"v", "Ñµ"},
    {"w", "Ô"},
    {"x", "x"},
    {"y", "y"},
    {"z", "á´¢"},
    {"a", "Î±"},
    {"b", "b"},
    {"c", "Ñ"},
    {"d", "Ô"},
    {"e", "È©"},
    {"f", "Ò"},
    {"g", "Ô"},
    {"h", "Ò»"},
    {"i", "i"},
    {"j", "Ñ"},
    {"k", "Îº"},
    {"l", "L"},
    {"m", "Ð¼"},
    {"n", "n"},
    {"o", "Î¿"},
    {"p", "Ñ"},
    {"q", "Ô"},
    {"r", "r"},
    {"s", "Å"},
    {"t", "t"},
    {"u", "u"},
    {"v", "Ñµ"},
    {"w", "Ô"},
    {"x", "x"},
    {"y", "y"},
    {"z", "á´¢"},
    {" ,", "_"},
    {" ", ""}
}

local Gen = function(Message)
    for _, info in Keywords do
        local real = info[1]
        local bypass = info[2]
        Message = Message:gsub(real, bypass)
    end
    return Message
end

local Connection = Instance.new("BindableFunction")

for _, c in getconnections(ChatBar.FocusLost) do
    c:Disconnect()
end

ChatBar.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        Connection:Invoke(ChatBar.Text)
        ChatBar.Text = ""
    end
end)

Connection.OnInvoke = function(Message)
    Message = Gen(Message)
    if isLegacy then
        local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
        ChatRemote:FireServer(Message, "All")
    else
        local Channel = TCS.TextChannels.RBXGeneral
        Channel:SendAsync(Message)
    end
end

local NotifyModule = {}

if not NotifyGui then
    getgenv().NotifyGui = Instance.new("ScreenGui")
    getgenv().Template = Instance.new("TextLabel")
    
    if syn then
        if gethui then
            gethui(NotifyGui)
        else
            syn.protect_gui(NotifyGui)
        end
    end
    
    NotifyGui.Name = "Notification"
    NotifyGui.Parent = CoreGui
    
    Template.Name = "Template"
    Template.Parent = NotifyGui
    Template.AnchorPoint = Vector2.new(.5, .5)
    Template.BackgroundTransparency = 1
    Template.BorderSizePixel = 0
    Template.Position = UDim2.new(.5, 0, 1.5, 0)
    Template.Size = UDim2.new(.8, 0, .1, 0)
    Template.Font = Enum.Font.Code
    Template.Text = ""
    Template.TextSize = 30
    Template.TextWrapped = true
end

local Tween = function(Object, Time, Style, Direction, Property)
    return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
end

function NotifyModule:Notify(Text, Duration)
    task.spawn(function()
        local Clone = Template:Clone()
        Clone.Name = "ClonedNotification"
        Clone.Parent = NotifyGui
        Clone.Text = Text
        Clone.TextColor3 = Color3.fromRGB(0, 0, 0)

        local UIStroke = Instance.new("UIStroke")
        UIStroke.Parent = Clone
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0
        
        if not Duration or Duration == nil then
            Duration = 10
        end
        
        local FinalPosition = 0
        
        for _, x in next, NotifyGui:GetChildren() do
            if x.Name ~= "Template" then
                FinalPosition += .125
            end
        end
        
        local TweenPos = Tween(Clone, 1, "Quart", "InOut", {Position = UDim2.new(.5, 0, .95 - FinalPosition, 0)})
        TweenPos:Play()
        TweenPos.Completed:wait()
        
        wait(Duration)
        
        TweenPos = Tween(Clone, 1, "Quart", "InOut", {Position = UDim2.new(.5, 0, 1.5, 0)})
        TweenPos:Play()
        TweenPos.Completed:wait()
        
        Clone:Destroy()
    end)
end

NotifyModule:Notify("Emoji Chat Bypasser Made By A PERSON", 5)

local Connection
Connection = UserInputService.InputBegan:Connect(function(Input, GPE)
    if GPE or Input.KeyCode ~= Enum.KeyCode.Zero then return end

    NotifyModule:Notify("Ty")
    setclipboard("Thanks For Using My Script")
    Connection:Disconnect()
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))()
