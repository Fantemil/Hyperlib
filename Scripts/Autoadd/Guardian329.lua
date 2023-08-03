if not game:IsLoaded() then game.Loaded:Wait() end
local hrequest=(typeof(syn)=='table'and syn.request)or(typeof(http)=='table'and http.request)or(typeof(fluxus)=='table'and fluxus.request)or request or http_request
getgenv().options={
    MaliciousNamecalls=true,
    ChatBan=true,
    PetSim=true,
    MiningSim=true,
    AntiLog=true,
    AutoJoin=true
}
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local StarterGui=game:GetService("StarterGui")
if options.ChatBan then
    local ChatBar=LocalPlayer.PlayerGui:WaitForChild("Chat"):WaitForChild("Frame").ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
    local ChatScript=LocalPlayer.PlayerScripts:WaitForChild("ChatScript")
    local ChatMain = ChatScript:WaitForChild("ChatMain")
    local MessagePostedEvent
    local SayMessageRequest=game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    for _, Event in next, debug.getupvalues(require(ChatMain).MessagePosted.fire) do
        if typeof(Event) == "Instance" then
            MessagePostedEvent = Event
        end
    end
    local old1
    old1=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        local method=getnamecallmethod()
        if method=="FireServer" and self==SayMessageRequest and getcallingscript()~=ChatMain then
            warn("SayMessageRequest remote event attempted to fire. Attempt denied.")
            return
        elseif method=="CaptureFocus" and self==ChatBar then
            warn("Chat focus capture as local player was attempted. Attempt denied.")
            if getcallingscript()~=ChatScript then
                if not getgenv().a then
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="WARNING!",
                        Text=getcallingscript()==nil and "The script executed is trying to force you to chat!" or "The game is trying to force you to chat in "..getcallingscript().GetFullName(getcallingscript()),
                        Button1="Okay!",
                        Duration=10
                    })
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="What to do",
                        Text=getcallingscript()==nil and "It is recommended to rejoin the game and to not execute the script again." or "It is recommended you go there (through dex) and disable/delete it to avoid accidentally sending potentially inappropriate messages.",
                        Button1="Okay!",
                        Duration=10
                    })
                    if getcallingscript() then
		                setclipboard(getcallingscript().GetFullName(getcallingscript()))
                        StarterGui.SetCore(StarterGui,"SendNotification",{
                            Title="Copied to clipboard",
                            Text="The path has also been copied to clipboard so you won't lose it in case this warning is gone too fast.",
                            Button1="Okay!",
                            Duration=10
                        })
                    end
                    getgenv().a="e"
                end
            end
            return
        elseif method=="ReportAbuse" and self==Players then
            warn("Player report was attempted. Attempt denied.")
            return error("Ha ha")
        elseif method=="Fire" and self==MessagePostedEvent then
            warn("MessagePosted usage was attempted. Attempt denied.")
            return
        end
        return old1(self,...)
    end))
    local old2;
    old2=hookmetamethod(game,"__index",newcclosure(function(self,b,...)
        if b=="FireServer" and self==SayMessageRequest and getcallingscript()~=ChatMain then
            warn("SayMessageRequest remote event attempted to fire. Attempt denied.")
            return
        elseif b=="CaptureFocus" and self==ChatBar then
            warn("Chat focus capture as local player was attempted. Attempt denied.")
            if getcallingscript()~=ChatScript then
                if not getgenv().c then
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="WARNING!",
                        Text=getcallingscript()==nil and "The script executed is trying to force you to chat!" or "The game is trying to force you to chat in "..getcallingscript():GetFullName(),
                        Button1="Okay!",
                        Duration=10
                    })
                    StarterGui.SetCore(StarterGui,"SendNotification",{
                        Title="What to do",
                        Text=getcallingscript()==nil and "It is recommended to rejoin the game and to not execute the script again." or "It is recommended you go there (through dex) and disable/delete it to avoid accidentally sending potentially inappropriate messages.",
                        Button1="Okay!",
                        Duration=10
                    })
                    if getcallingscript() then
		                setclipboard(getcallingscript():GetFullName())
                        StarterGui.SetCore(StarterGui,"SendNotification",{
                            Title="Copied to clipboard",
                            Text="The path has also been copied to clipboard so you won't lose it in case this warning is gone too fast.",
                            Button1="Okay!",
                            Duration=10
                        })
                    end
                    getgenv().c="e"
                end
            end
            return
        elseif b=="ReportAbuse" and self==Players then
            warn("Player report was attempted. Attempt denied.")
            return error("Ha ha")
        elseif b=="Fire" and self==MessagePostedEvent then
            warn("MessagePosted usage was attempted. Attempt denied..")
            return
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
end
if options.MaliciousNamecalls then
    local st={"Instance","Game"}
    hookmetamethod(game,"__tostring",newcclosure(function(a,...)
        return table.find(st,a.Name) and a.ClassName or a.Name 
    end))
    local old3,old4
    local namecall={
        ["BrowserService"]={
            ["OpenBrowserWindow"]=1,
            ["ExecuteJavaScript"]=2
        },
        ["MarketPlaceService"]={
            ["PerformPurchase"]=1,
            ["GetRobuxBalance"]=2
        },
        ["MessageBusService"]={
            ["Publish"]=1,
            ["GetMessageId"]=2
        },
        ["HttpService"]={
            ["RequestInternal"]=1
        },
        ["GuiService"]={
            ["OpenBrowserWindow"]=1
        },
        ["DataModel"]={
            ["OpenVideosFolder"]=1
        }
    }
    old3=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        if rawget(namecall,tostring(self)) and rawget(namecall[tostring(self)],getnamecallmethod()) then
            warn("Malicious namecall attempted execution. Attempt denied.")
            return error("Get owned")
        end
        return old3(self,...)
    end))
    old4=hookmetamethod(game,"__index",newcclosure(function(self,b,...)
        if rawget(namecall,old4(self,"Name")) and rawget(rawget(namecall,old4(self,"Name")),i) then
			warn("Malicious namecall attempted execution. Attempt denied.")
            return error("Get owned")
        end
        return old4(self,b,...)
    end))
end
local old6
old6=hookfunction(hrequest,function(...)
    local args={...}
    if options.AntiLog and args[1].Url:find("webhooks") then
        warn(("Script attempted to log info at %s. Attempt denied."):format(args[1].Url))
        args[1].Url="https://google.com"
        return old6(unpack(args))
    elseif options.AutoJoin and args[1].Url:find("rpc") then
        warn(("Script attempted to auto join %s. Attempt denied."):format("https://discord.gg/"..game:GetService("HttpService"):JSONDecode(args[1].Body).args.code)) 
        return 
    end 
    return old6(...)
end)
if options.PetSim and game.PlaceId==6284583030 then
    local bank=workspace:WaitForChild("__THINGS"):WaitForChild("__REMOTES"):WaitForChild("invite to bank")
    local old
    old=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        if checkcaller() and self==bank and getnamecallmethod()=="InvokeServer" then
            local args={...}
            task.spawn(function()
                warn(("Script attempted to give user named %s (ID: %s) access to your bank. Attempt denied."):format(Players:GetNameFromUserIdAsync(args[1][2]),args[1][2]))
            end)
            return 
        end
        return old(self,...)
    end))
    local oldd
    oldd=hookfunction(Instance.new("RemoteFunction").InvokeServer,newcclosure(function(self,...)
        if checkcaller() and self==bank then
            local args={...}
            task.spawn(function()
                warn(("Script attempted to give user named %s (ID: %s) access to your bank. Attempt denied."):format(Players:GetNameFromUserIdAsync(args[1][2]),args[1][2]))
            end)
            return
        end
        return oldd(self,...)
    end))
elseif game.PlaceId==9551640993 and options.MiningSim then
    local tr=game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ConfirmTrade")
    local old
    old=hookmetamethod(game,"__namecall",newcclosure(function(self,...)
        if checkcaller() and self==tr and getnamecallmethod()=="FireServer" then
            warn("Script attempted to confirm a potentially rigged/scam trade. Attempt denied.")
            return
        end
        return old(self,...)
    end))
    local oldd
    oldd=hookfunction(Instance.new("RemoteEvent").FireServer,newcclosure(function(self,...)
        if checkcaller() and self==tr then
            warn("Script attempted to confirm a potentially rigged/scam trade. Attempt denied.")
            return
        end
        return oldd(self,b,...)
    end))
end