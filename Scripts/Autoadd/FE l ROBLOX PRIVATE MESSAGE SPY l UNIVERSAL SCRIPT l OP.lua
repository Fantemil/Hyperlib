local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Anir Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Chat Log's"
})

--[[
Name = <string> - The name of the section.
]]
OrionLib:MakeNotification({
    Name = "From Anir",
    Content = "U better ont leak it!",
    Image = "rbxassetid://4483345998",
    Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]
--This script reveals ALL hidden messages in the default chat
--chat "/spy" to toggle!
enabled = true
--if true will check your messages too
spyOnMyself = true
--if true will chat the logs publicly (fun, risky)
public = false
--if true will use /me to stand out
publicItalics = true
--customize private logs
privateProperties = {
    Color = Color3.fromRGB(0,255,255); 
    Font = Enum.Font.SourceSansBold;
    TextSize = 18;
}
local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
local instance = (_G.chatSpyInstance or 0) + 1
_G.chatSpyInstance = instance
 
local function onChatted(p,msg)
    if _G.chatSpyInstance == instance then
        if p==player and msg:lower():sub(1,4)=="/spy" then
            enabled = not enabled
            wait(0.3)
            privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
            StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
        elseif enabled and (spyOnMyself==true or p~=player) then
            msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
            local hidden = true
            local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
                if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
                    hidden = false
                end
            end)
            wait(1)
            conn:Disconnect()
            if hidden and enabled then
                if public then
                    saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
                else
                    privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
                    StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
                end
            end
        end
    end
end
 
for _,p in ipairs(Players:GetPlayers()) do
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end
Players.PlayerAdded:Connect(function(p)
    p.Chatted:Connect(function(msg) onChatted(p,msg) end)
end)
privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
local chatFrame = player.PlayerGui.Chat.Frame
chatFrame.ChatChannelParentFrame.Visible = true
chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)