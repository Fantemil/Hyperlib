-- no skid :)
if not game:IsLoaded() then
    game.Loaded:wait()
end

local ACL_LoadTime = tick()

local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer

local PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui") do
    if not PlayerGui then
        repeat task.wait() until Player:FindFirstChildWhichIsA("PlayerGui")
        PlayerGui = Player:FindFirstChildWhichIsA("PlayerGui")
    end
end

local Notify = function(_Title, _Text , Time)
    StarterGui:SetCore("SendNotification", {Title = _Title, Text = _Text, Icon = "rbxassetid://2541869220", Duration = Time})
end

local Tween = function(Object, Time, Style, Direction, Property)
 return TweenService:Create(Object, TweenInfo.new(Time, Enum.EasingStyle[Style], Enum.EasingDirection[Direction]), Property)
end

local Insert = function(Tbl, ...)
    for _, x in next, {...} do
        table.insert(Tbl, x) 
    end
end

local ChatFixToggle = true
local CoreGuiSettings = {}
local ChatFix

ChatFix = hookmetamethod(StarterGui, "__namecall", function(self, ...)
    local Method = getnamecallmethod()
    local Arguments = {...}
    
    if not checkcaller() and ChatFixToggle and Method == "SetCoreGuiEnabled" then
        local CoreGuiType = Arguments[1]
        local SettingValue = Arguments[2]
        
        if CoreGuiType == ("All" or "Chat") then
            Insert(CoreGuiSettings, CoreGuiType, SettingValue)
            return
        end
    end
    
    return ChatFix(self, ...)
end)

local ACLWarning = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local Top = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local WarningLbl = Instance.new("TextLabel")
local Loading = Instance.new("Frame")
local Bar = Instance.new("Frame")
local WarningBackground = Instance.new("Frame")
local WarningFrame = Instance.new("Frame")
local Despair = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")
local Reason_1 = Instance.new("TextLabel")
local Reason_2 = Instance.new("TextLabel")
local Trollge = Instance.new("ImageLabel")
local UIPadding = Instance.new("UIPadding")

local MakeGuiThread = coroutine.wrap(function()    
    syn.protect_gui(ACLWarning)
    
    ACLWarning.Name = "ACL Warning"
    ACLWarning.Parent = CoreGui
    ACLWarning.Enabled = false
    ACLWarning.DisplayOrder = -2147483648
    
    Background.Name = "Background"
    Background.Parent = ACLWarning
    Background.AnchorPoint = Vector2.new(0.5, 0.5)
    Background.BackgroundColor3 = Color3.fromRGB(21, 0, 0)
    Background.BorderSizePixel = 0
    Background.Position = UDim2.new(0.5, 0, 0.5, 0)
    Background.Size = UDim2.new(0.300000012, 0, 0.5, 0)
    
    Top.Name = "Top"
    Top.Parent = Background
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Top.BorderSizePixel = 0
    Top.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Top.Size = UDim2.new(0.899999976, 0, 0.100000001, 0)
    
    Exit.Name = "Exit"
    Exit.Parent = Top
    Exit.AnchorPoint = Vector2.new(0.5, 0.5)
    Exit.BackgroundColor3 = Color3.fromRGB(38, 0, 0)
    Exit.Position = UDim2.new(0.949999988, 0, 0.5, 0)
    Exit.Size = UDim2.new(0.100000001, -6, 1, -9)
    Exit.Visible = false
    Exit.Font = Enum.Font.Arcade
    Exit.Text = "X"
    Exit.TextColor3 = Color3.fromRGB(255, 255, 255)
    Exit.TextScaled = true
    Exit.TextSize = 14.000
    Exit.TextWrapped = true
    
    UICorner.CornerRadius = UDim.new(0.200000003, 0)
    UICorner.Parent = Exit
    
    WarningLbl.Name = "WarningLbl"
    WarningLbl.Parent = Top
    WarningLbl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    WarningLbl.BackgroundTransparency = 1.000
    WarningLbl.Position = UDim2.new(0, 17, 0, 0)
    WarningLbl.Size = UDim2.new(0.5, 0, 1, 0)
    WarningLbl.Font = Enum.Font.Arcade
    WarningLbl.Text = "Warning!"
    WarningLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
    WarningLbl.TextScaled = true
    WarningLbl.TextSize = 14.000
    WarningLbl.TextWrapped = true
    WarningLbl.TextXAlignment = Enum.TextXAlignment.Left
    
    Loading.Name = "Loading"
    Loading.Parent = Top
    Loading.AnchorPoint = Vector2.new(0.5, 0.5)
    Loading.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
    Loading.BorderSizePixel = 0
    Loading.Position = UDim2.new(0.699999988, 0, 0.5, 0)
    Loading.Size = UDim2.new(0.349999994, 0, 0.0199999996, 0)
    
    Bar.Name = "Bar"
    Bar.Parent = Loading
    Bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bar.BorderSizePixel = 0
    Bar.Size = UDim2.new(0, 0, 1, 0)
    
    WarningBackground.Name = "WarningBackground"
    WarningBackground.Parent = Background
    WarningBackground.AnchorPoint = Vector2.new(0.5, 0.5)
    WarningBackground.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    WarningBackground.BorderSizePixel = 0
    WarningBackground.Position = UDim2.new(0.5, 0, 0.550000012, 0)
    WarningBackground.Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
    
    WarningFrame.Name = "WarningFrame"
    WarningFrame.Parent = WarningBackground
    WarningFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    WarningFrame.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    WarningFrame.BorderSizePixel = 0
    WarningFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    WarningFrame.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
    
    Despair.Name = "Despair"
    Despair.Parent = WarningFrame
    Despair.AnchorPoint = Vector2.new(0.5, 0.5)
    Despair.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Despair.BackgroundTransparency = 1.000
    Despair.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Despair.BorderSizePixel = 0
    Despair.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Despair.Size = UDim2.new(0.949999988, 0, 0.119999997, 0)
    Despair.Font = Enum.Font.Oswald
    Despair.Text = "Anti Chat Logger will not work here!"
    Despair.TextColor3 = Color3.fromRGB(255, 255, 255)
    Despair.TextScaled = true
    Despair.TextSize = 50.000
    Despair.TextWrapped = true
    Despair.TextYAlignment = Enum.TextYAlignment.Top
    
    UIListLayout.Parent = WarningFrame
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 15)
    
    Reason_1.Name = "Reason_1"
    Reason_1.Parent = WarningFrame
    Reason_1.AnchorPoint = Vector2.new(0.5, 0.5)
    Reason_1.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Reason_1.BackgroundTransparency = 1.000
    Reason_1.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Reason_1.BorderSizePixel = 0
    Reason_1.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Reason_1.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
    Reason_1.Visible = false
    Reason_1.Font = Enum.Font.Oswald
    Reason_1.Text = "-Chat Module was not found."
    Reason_1.TextColor3 = Color3.fromRGB(255, 0, 0)
    Reason_1.TextScaled = true
    Reason_1.TextSize = 50.000
    Reason_1.TextWrapped = true
    Reason_1.TextYAlignment = Enum.TextYAlignment.Top
    
    Reason_2.Name = "Reason_2"
    Reason_2.Parent = WarningFrame
    Reason_2.AnchorPoint = Vector2.new(0.5, 0.5)
    Reason_2.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
    Reason_2.BackgroundTransparency = 1.000
    Reason_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Reason_2.BorderSizePixel = 0
    Reason_2.Position = UDim2.new(0.5, 0, 0.100000001, 0)
    Reason_2.Size = UDim2.new(0.949999988, 0, 0.100000001, 0)
    Reason_2.Visible = false
    Reason_2.Font = Enum.Font.Oswald
    Reason_2.Text = "-MessagePosted function is invalid."
    Reason_2.TextColor3 = Color3.fromRGB(255, 0, 0)
    Reason_2.TextScaled = true
    Reason_2.TextSize = 50.000
    Reason_2.TextWrapped = true
    Reason_2.TextYAlignment = Enum.TextYAlignment.Top
    
    Trollge.Name = "Trollge"
    Trollge.Parent = WarningFrame
    Trollge.AnchorPoint = Vector2.new(0.5, 0.5)
    Trollge.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Trollge.BackgroundTransparency = 1.000
    Trollge.Position = UDim2.new(0.5, 0, 0.670000017, 0)
    Trollge.Size = UDim2.new(0.449999988, 0, 0.5, 0)
    Trollge.Image = "rbxassetid://10104834800"
    
    UIPadding.Parent = WarningFrame
    UIPadding.PaddingTop = UDim.new(0, 10)
    
    Exit.MouseButton1Click:Connect(function()
        local UpTween = Tween(Background, .2, "Quint", "Out", {Position = UDim2.new(0.5, 0, 0.45, 0)})
        local DownTween = Tween(Background, 1, "Quad", "Out", {Position = UDim2.new(0.5, 0, 2, 0)})
        UpTween:Play()
        UpTween.Completed:wait()
        DownTween:Play()
        DownTween.Completed:wait()
        ACLWarning:Destroy()
    end)
end)()

local ExitCooldown = function()
    wait(3)
    local Tween = Tween(Bar, 5, "Quad", "InOut", {Size = UDim2.new(1, 0, 1, 0)})
    Tween:Play()
    Tween.Completed:wait()
    Loading:Destroy()
    Exit.Visible = true
end

local PlayerScripts = Player:WaitForChild("PlayerScripts")
local ChatMain = PlayerScripts:FindFirstChild("ChatMain", true) or false

if not ChatMain then
    local Timer = tick()
    repeat
        task.wait()
    until PlayerScripts:FindFirstChild("ChatMain", true) or tick() > (Timer + 3)
    ChatMain = PlayerScripts:FindFirstChild("ChatMain", true)
    if not ChatMain then
        ACLWarning.Enabled = true
        Reason_1.Visible = true
        ExitCooldown()
        return
    end
end

local PostMessage = require(ChatMain).MessagePosted

if not PostMessage then
    ACLWarning.Enabled = true
    Reason_2.Visible = true
    ExitCooldown()
    return
end

local MessageEvent = Instance.new("BindableEvent")
local OldFunctionHook
OldFunctionHook = hookfunction(PostMessage.fire, function(self, Message)
    if not checkcaller() and self == PostMessage then
        MessageEvent:Fire(Message)
        return
    end
    return OldFunctionHook(self, Message)
end)

if setfflag then
    setfflag("AbuseReportScreenshot", "False")
    setfflag("AbuseReportScreenshotPercentage", 0)
end

ChatFixToggle = false
ACLWarning:Destroy()
if OldSetting then
    StarterGui:SetCoreGuiEnabled(CoreGuiSettings[1], CoreGuiSettings[2])
end
Notify("Loaded Successfully", "Anti Chat and Screenshot Logger Loaded!", 15)
print(string.format("Anti Chat-Logger has loaded in %s seconds.", tostring(tick() - ACL_LoadTime):sub(1, 4)))