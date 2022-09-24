_G.AutoOof = true;
while _G.AutoOof == true do


local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").RemoteEvents.Other.DisintegrateEvent:FireServer(unpack(args))




wait (0)
end