local sendmsg = function(v1,v2)
    for i = 1,v1 do
local args = {
    [1] = v2
}
game:GetService("ReplicatedStorage").Remotes.chat:FireServer(unpack(args))
   end
end
game:GetService("Players").LocalPlayer.PlayerGui.CustomChat.Frame.Name = "anticrash" -- anticrash for myself
while wait() do
sendmsg(100,"yo") -- you can customize the first and the other argument. use 100 or 50.
end