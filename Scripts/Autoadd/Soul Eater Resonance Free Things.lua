while task.wait() do
for i=1,150 do
local args = {
    [1] = "clickSpin"
}

game:GetService("ReplicatedStorage").remotes.remoteEvent:FireServer(unpack(args))
end
end