game.Loaded:Wait()
getgenv().a=nil
getgenv().c=nil
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ChatBar=LocalPlayer.PlayerGui:WaitForChild("Chat"):WaitForChild("Frame").ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
local ChatMain = LocalPlayer.PlayerScripts:WaitForChild("ChatScript"):WaitForChild("ChatMain")
local MessagePostedEvent
local SayMessageRequest=game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
local StarterGui=game:GetService("StarterGui")
for _, object in next, getgc(true) do
    if type(object) ~= "table" then continue end
    local MessagePosted = rawget(object, "MessagePosted")
    if not MessagePosted then continue end
    local Fire = rawget(MessagePosted, "fire")
    if not Fire then continue end
    local FunctionScript = getfenv(Fire).script
    if FunctionScript ~= ChatMain then continue end
    for _, Event in next, debug.getupvalues(Fire) do
        if typeof(Event) == "Instance" then
            MessagePostedEvent = Event
        end
    end
end
local old;
old=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local method=getnamecallmethod()
    if not checkcaller() then
        if method=="FireServer" and self==SayMessageRequest and tostring(getcallingscript())~="ChatMain" then
            warn("Game tried to chat for the player through the SayMessageRequest remote event. Attempt denied.")
            return
        elseif method=="CaptureFocus" and self==ChatBar then
            warn("Game tried to send a legit message through the chat as the local player via capturing the chat focus. Attempt denied.")
            if tostring(getcallingscript())~="ChatScript" then
                if getgenv().a==nil then 
                    setclipboard(getcallingscript().GetFullName(getcallingscript()))
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="Copied to clipboard",
                        Text="The game is trying to force you to chat in "..getcallingscript().GetFullName(getcallingscript()),
                        Button1="Okay!",
                        Duration=10})
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="Copied to clipboard",
                        Text="It is recommended you go there (through dex) and disable/delete it to avoid accidentally sending potentially inappropriate messages.",
                        Button1="Okay!",
                        Duration=10})
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="Copied to clipboard",
                        Text="The path has also been copied to clipboard so you won't lose it in case this warning is gone too fast.",
                        Button1="Okay!",
                        Duration=10})
                    getgenv().a="e"
                end
            end
            return
        elseif method=="ReportAbuse" and self==Players then
            warn("Game tried to report the player. Attempt denied.")
            return error("Ha ha")
        elseif method=="Fire" and self==MessagePostedEvent then
            warn("Game tried using the MessagePosted bindable event. Attempt denied.")
            return
        end
    end
    return old(self,...)
end))
local old2;
old2=hookmetamethod(game,"__index",newcclosure(function(self,b,...)
    if not checkcaller() then
        if b=="FireServer" and self==SayMessageRequest and tostring(getcallingscript())~="ChatMain" then
            warn("Game tried to chat for the player through the SayMessageRequest remote event. Attempt denied.")
            return
        elseif b=="CaptureFocus" and self=="ChatBar" then
            warn("Game tried to send a legit message through the chat as the local player via capturing the chat focus. Attempt denied.")
            if tostring(getcallingscript())~="ChatScript" then
                if c==nil then 
                    setclipboard(getcallingscript():GetFullName())
                    StarterGui:SetCore("SendNotification",{
                        Title="Copied to clipboard",
                        Text="The game is trying to force you to chat in "..getcallingscript():GetFullName(),
                        Button1="Okay!",
                        Duration=10})
                    StarterGui:SetCore("SendNotification",{
                        Title="Copied to clipboard",
                        Text="It is recommended you go there (through dex) and disable/delete it to avoid accidentally sending potentially inappropriate messages.",
                        Button1="Okay!",
                        Duration=10})
                    StarterGui:SetCore("SendNotification",{
                        Title="Copied to clipboard",
                        Text="The path has also been copied to clipboard so you won't lose it in case this warning is gone too fast.",
                        Button1="Okay!",
                        Duration=10})
                    c="e"
                end
            end
            return
        elseif b=="ReportAbuse" and self==Players then
            warn("Game tried to report the player. Attempt denied.")
            return error("Ha ha")
        elseif b=="Fire" and self==MessagePostedEvent then
            warn("Game tried using the MessagePosted bindable event. Attempt denied.")
            return
        end
    end
    return old2(self,b,...)
end))
task.spawn(function()
    while task.wait() do
        if not ChatBar:IsFocused() and ChatBar.Text~="" then 
            ChatBar.Text=""
        end 
    end
end)