--[[
CREDITS:
âº heartasians      :   BYPASS & CHAT HOOK
âº AnthonyIsntHere  :   NOTIFICATION LIBRARY

ð¤ https://discord.com/invite/FRsmP9knVc ð¤
]]

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
    {"you fucking retard", "yoâ¥â¥â¥â¥â¥â¥ufâ¥â¥â¥â¥â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥â¥â¥â¥â¥câ¥â¥â¥â¥â¥â¥â¥â¥â¥kâ¥â¥iâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥nâ¥grâ¥â¥â¥â¥â¥â¥eâ¥â¥tâ¥â¥â¥â¥â¥â¥arâ¥â¥â¥â¥â¥â¥d"},
    {"shut up faggot and die", "sâ¥â¥â¥â¥â¥â¥â¥â¥Ò»uâ¥â¥â¥â¥â¥â¥â¥â¥tuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥pfâ¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥oâ¥â¥â¥â¥â¥â¥â¥â¥tanâ¥â¥â¥â¥â¥â¥â¥â¥ddiâ¥â¥â¥â¥â¥â¥â¥â¥Ðµ"},
    {"you fucking nigger", "yÐ¾ufuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥gnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥r"},
    {"fucking nigger", "fuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥gnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥r"},
    {"shut up nigger and die", "sâ¥â¥â¥â¥â¥â¥â¥â¥Ò»uâ¥â¥â¥â¥â¥â¥â¥â¥tuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥pnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ranâ¥â¥â¥â¥â¥â¥â¥â¥ddiâ¥â¥â¥â¥â¥â¥â¥â¥Ðµ"},
    {"lil nigga", "liâ¥â¥â¥â¥â¥â¥â¥â¥â¥Ónâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐ°"},
    {"fucking", "fuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñkâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñnâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥g"},
    {"nigger", "nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐµâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥r"},
    {"faggot", "fâ¥â¥â¥â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥É¡É¡â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥oâ¥â¥â¥â¥â¥â¥â¥â¥t"},
    {"nigga", "nâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥ggÐ°"},
    {"fuck", "fuâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñk"},
    {"retard", "râ¥â¥â¥â¥â¥â¥eâ¥â¥tâ¥â¥â¥â¥â¥â¥arâ¥â¥â¥â¥â¥â¥d"},
    {"up", "uâ¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥p"},
    {"shut", "sâ¥â¥â¥â¥â¥â¥â¥â¥Ò»uâ¥â¥â¥â¥â¥â¥â¥â¥t"},
    {"child porn", "châ¥â¥â¥â¥â¥â¥â¥â¥â¥iÓdpÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥rn"},
    {"butt", "butt"},
    {"snapchat", "ÑnÐ°ÑÑÒ»Ð°t"},
    {"snap", "ÑnÐ°Ñ"},
    {"instagram", "ÑnÑtÐ°grÐ°m"},
    {"insta", "ÑnÑtÐ°"},
    {"dirty", "dÑrtÑ"},
    {"rape", "â¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥"},
    {"sex", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"whore", "â¥â¥â¥â¥â¥wâ¥â¥â¥â¥â¥Ò»â¥â¥â¥â¥â¥oâ¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥eâ¥â¥â¥â¥â¥"},
    {"slut", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Óâ¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥"},
    {"pornhub", "â¥â¥â¥â¥â¥ÑÐ¾â¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ò»â¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥bâ¥â¥â¥â¥â¥"},
    {"cock", "cÐ¾â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥â¥Ñk"},
    {"pussy", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"naked", "â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥dâ¥â¥â¥â¥â¥"},
    {"titties", "â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"titty", "â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥yâ¥â¥â¥â¥â¥"},
    {"tits", "â¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥tâ¥â¥â¥â¥â¥sâ¥â¥â¥â¥â¥"},
    {"cum", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥mâ¥â¥â¥â¥â¥"},
    {"kkk", "â¥â¥â¥â¥â¥Ðâ¥â¥â¥â¥â¥Ðâ¥â¥â¥â¥â¥Ðâ¥â¥â¥â¥â¥"},
    {"rizz", "râ¥â¥â¥â¥â¥iâ¥â¥â¥â¥â¥zâ¥â¥â¥â¥â¥z"},
    {"ass", "â¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"vagina", "â¥â¥â¥â¥â¥vâ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥gâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥"},
    {"nudes", "â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥uâ¥â¥â¥â¥â¥dâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"ho", "â¥â¥â¥â¥â¥Ò»â¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥"},
    {"blowjob", "â¥â¥â¥â¥bâ¥â¥â¥â¥Óâ¥â¥â¥â¥Ð¾â¥â¥â¥â¥wâ¥â¥â¥â¥Ñâ¥â¥â¥â¥oâ¥â¥â¥â¥bâ¥â¥â¥â¥"},
    {"femboy", "fÐµmbÐ¾Ñ"},
    {"love", "â¥â¥â¥â¥â¥Óâ¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥vâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥"},
    {"kiss", "â¥â¥â¥â¥â¥kâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"discord", "dÑÑÑÐ¾rd"},
    {"porn", "â¥â¥â¥â¥â¥ÑÐ¾â¥â¥â¥â¥â¥râ¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥"},
    {"damn", "dÐ°mn"},
    {"anal", "Ð°nÐ°l"},
    {"zoophile", "zÐ¾Ð¾ÑÒ»ÑÓÐµ"},
    {"lmao", "LÐÐÐ"},
    {"lmfao", "LÐFÐÐ"},
    {"george", "gÐµÐ¾rgÐµ"},
    {"floyd", "flÐ¾Ñd"},
    {"sexual", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥ual"},
    {"tiktok", "tÑktÐ¾k"},
    {"twerk", "twÐµrk"},
    {"gay", "â¥â¥â¥â¥â¥gâ¥â¥â¥â¥â¥Ð°â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"black", "bÓÐ°Ñk"},
    {"suck", "ÑuÑk"},
    {"heil", "Ò»ÐµÑÓ"},
    {"nazi", "â¥â¥â¥â¥â¥nâ¥â¥â¥â¥â¥aâ¥â¥â¥â¥â¥zâ¥â¥â¥â¥â¥â°â¥â¥â¥â¥â¥"},
    {"penis", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ð¿â¥â¥â¥â¥â¥â°â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥"},
    {"sperm", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Ð³â¥â¥â¥â¥â¥mâ¥â¥â¥â¥â¥"},
    {"pedo", "â¥â¥â¥â¥â¥Ñâ¥â¥â¥â¥â¥Ðµâ¥â¥â¥â¥â¥Éâ¥â¥â¥â¥â¥Ð¾â¥â¥â¥â¥â¥"},
    {"hate", "Ò»Ð°tÐµ"},
    {"balls", "bÐ°ÓÓÑ"},
    {" ", ""}
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
        Clone.TextColor3 = Color3.fromRGB(75, 121, 233)

        local UIStroke = Instance.new("UIStroke")
        UIStroke.Parent = Clone
        UIStroke.Thickness = 1
        UIStroke.Transparency = 0.5
        
        if not Duration or Duration == nil then
    	    Duration = 5
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

NotifyModule:Notify("heartasian's bypass loaded âº press 0 to join discord for more exclusive scripts", 5)

local Connection
Connection = UserInputService.InputBegan:Connect(function(Input, GPE)
    if GPE or Input.KeyCode ~= Enum.KeyCode.Zero then return end

    NotifyModule:Notify("copied invite link to clipboard")
    setclipboard("https://discord.com/invite/FRsmP9knVc")
    Connection:Disconnect()
end)
