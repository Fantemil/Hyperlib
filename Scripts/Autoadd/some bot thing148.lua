local follow = ".follow"
getgenv().Following = nil
local unfollow = ".unfollow"
local die,reset = ".die", ".reset"
local cmds = ".cmds"
local plrs = game:GetService("Players")
local plr = game:GetService("Players").LocalPlayer
game:GetService("Players").PlayerAdded:Connect(function(player)
    game.StarterGui:SetCore("SendNotification",  {
        Title = "Player Joined";
        Text = player.Name .. " Joined";
        Icon = "";
        Duration = 5;
        Callback = NotificationBindable;
    })
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Player Joined " .. player.Name ,"All")
end)
game:GetService("Players").PlayerRemoving:Connect(function(player)
    game.StarterGui:SetCore("SendNotification",  {
        Title = "Player Left";
        Text = player.Name .. " Left";
        Icon = "";
        Duration = 5;
        Callback = NotificationBindable;
    })
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Player Left " .. player.Name ,"All")
end)
GetArgs = function(Args)
    return Args:split(" ")
end
FindPlayer = function(h,h2)
    if string.lower(h) == "me" then
        return plr
    else
        h = h:gsub("%s+", "")
        for m, n in pairs(game:GetService("Players"):GetPlayers()) do
            if n.Name:lower():match("^" .. h:lower()) or n.DisplayName:lower():match("^" .. h:lower()) then
                return n
            end
        end
    end
    return nil
end
--[[
    local Args = GetArgs(message)
    local r = FindPlayer(Args[2])
    if r then
        print(r)
    else
        print('nah')
    end
]]
followingplr = nil
for i,v in pairs(plrs:GetPlayers()) do
    v.Chatted:Connect(function(message)
        if string.find(message, follow) then
            local Args = GetArgs(message)
            local r = FindPlayer(Args[2])
            if r then
                followingplr = r
            else
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "Could Not Find Player!";
                    Text = "";
                    Icon = "";
                    Duration = 5;
                    Callback = NotificationBindable;
                })
                return
            end
            getgenv().Following = true
            game.StarterGui:SetCore("SendNotification",  {
                Title = "Now Following";
                Text = followingplr.Name;
                Icon = "";
                Duration = 5;
                Callback = NotificationBindable;
            })
            task.spawn(function()
                while true do task.wait()
                    if not getgenv().Following then
                        break
                    end
                    plr.Character:WaitForChild("HumanoidRootPart").CFrame = followingplr.Character:WaitForChild("HumanoidRootPart").CFrame
                end
            end)
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("now following " .. followingplr.Name,"All")
        end
        if string.sub(string.lower(unfollow), 0, #message) == string.lower(message) or string.find(message,unfollow) then
            if getgenv().Following then
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "No Longer Following";
                    Text = followingplr.Name;
                    Icon = "";
                    Duration = 5;
                    Callback = NotificationBindable;
                })
                getgenv().Following = false
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("no longer following " .. followingplr.Name,"All")
            else
                game.StarterGui:SetCore("SendNotification",  {
                    Title = "Not Following Anyone";
                    Text = "";
                    Icon = "";
                    Duration = 5;
                    Callback = NotificationBindable;
                })
                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("not following anyone","All")
            end
        end
        if string.sub(string.lower(reset), 0, #message) == string.lower(message) or string.sub(string.lower(die), 0, #message) == string.lower(message) then
            plr.Character.Humanoid.Health = 0
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("now dying","All")
        end
        if string.find(message,cmds) then
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(".follow [plr] .unf .die .reset","All")
        end
    end)
end
local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(game:GetService("Players").LocalPlayer.Idled)) do
		if v["Disable"] then
			v["Disable"](v)
		elseif v["Disconnect"] then
			v["Disconnect"](v)
		end
	end
else
	game:GetService("Players").LocalPlayer.Idled:Connect(function()
		local VirtualUser = game:GetService("VirtualUser")
		VirtualUser:CaptureController()
		VirtualUser:ClickButton2(Vector2.new())
	end)
end
ANTIAFK = game.Players.LocalPlayer.Idled:connect(function()
    game:FindService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    task.wait(1)
    game:FindService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hi im a script bot basically just type .cmds to see all the commands!","All")