local plrs = game:GetService('Players')
for i,v in pairs(plrs:GetChildren()) do
    wait(1)
    plrs.LocalPlayer:RequestFriendship(v)
end