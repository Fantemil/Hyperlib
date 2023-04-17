while wait() do
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Remotes.ReelFish:InvokeServer(unpack(args))
end