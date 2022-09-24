while wait()do
local args = {
    [1] = workspace.SPIKE
}

game:GetService("ReplicatedStorage").Events.Defuse:FireServer(unpack(args))
end