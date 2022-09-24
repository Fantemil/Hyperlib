while wait() do
game:GetService("ReplicatedStorage").ModuleScripts.SpinnerContents.RemoteFunction:InvokeServer()

local args = {
    [1] = "GIVEITEM"
}

game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
end