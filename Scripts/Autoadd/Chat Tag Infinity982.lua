--Original source by HeartAsians

--[[infinity's chat

âº Zubquance                   :   INFINITYS, CHAT TAGS, NOTIFICATIONS
âº suno/headlined/hello-n-bye    :   MORE INFINITIES, HOST SCRIPT

 https://discord.com/invite/Nuh uh bro no discord invites
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
    --phrases
  
   {"i",  "Ñ"},
    {"e",  "Ðµ"},
    {"g",  "g"},
    {"c",  "Ñ"},
    {"o",  "Ð¾"},
    {"p",  "Ñ"},
    {"s",  "Ñ"},
    {"u",  "u"},
    {"I",  "Ó"},
    {"E",  "Ð"},
    {"G", "ê"},
    {"C",  "Ð¡"},
    {"O", "Ð"},
    {"P",  "Ð "},
    {"S",  "Ð"},
    {"U",  "ð"},
    {"a", "Ð°"},
{"x", "Ñ"},
{"y", "Ñ"},
{"A", "Ð"},
{"H", "Ð"},
{"K", "Ð"},
{"T", "Ð¢"},
{"X", "Ð¥"},
{"I", "Î"},
{"h", "Ò»"},


--dont delete
    {" ", " "},

}

--[[
    need to fix:
    lmao, lmfao, discord

    need to add:
    damn, slave
]]

local Gen = function(Message)
    for _, info in Keywords do
        local real = info[1]
        local bypass = info[2]
        Message = Message:gsub(real, bypass)
    end
    return Message
end

local Chat = function(Message)
    if isLegacy then
        local ChatRemote = RStorage:FindFirstChild("SayMessageRequest", true)
        ChatRemote:FireServer(Message, "All")
    else
        local Channel = TCS.TextChannels.RBXGeneral
        Channel:SendAsync(Message)
    end
end

local Fake = function(Message)
    if isLegacy then
        Players:Chat(Message)
    else
        local Channel = TCS.TextChannels.RBXGeneral
       Channel:SendAsync(("/e Hey how are you doing?"):format(Message))
        -- ^^^ its too annoying
    end
end

local chars = {}
for i=97,122 do chars[#chars+1]=string.char(i) end
for i=65,90 do chars[#chars+1]=string.char(i) end

local RNG = function(length)
    local str = ""
    for i = 1, length do
        str = str .. chars[math.random(#chars)]
    end
    return str
end

local ResetFilter = function()
    
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
    Chat("Infinity Â· "..Message)
    
end

local NotifyModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeaPattern/notif-lib/main/main.lua"))()

UserInputService.InputBegan:Connect(function(Input, GPE)
    if GPE or Input.KeyCode ~= Enum.KeyCode.Zero then return end

    NotifyModule:Notify("copied invite link to clipboard", 1)
    setclipboard("https://discord.com/invite/FRsmP9knVc")
end)

NotifyModule:Notify("dr_flamepop's bypass powered by iheartasian's bypass! press 0 to join their discord!", 5)


local notifs = loadstring(game:HttpGet('https://raw.githubusercontent.com/CF-Trail/random/main/FE2Notifs.lua'))()
notifs.alert('ChatTags loaded')
task.wait(0)
notifs.alert('Your welcome!',Loaded,Loaded,'')