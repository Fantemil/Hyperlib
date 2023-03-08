a = true -- Set to "False" if you wan't to stop it.
while a do
wait(0.1) -- Delay
local args = {
    [1] = "Attack",
    [2] = workspace.Objects:FindFirstChild("Golden Golem")
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end