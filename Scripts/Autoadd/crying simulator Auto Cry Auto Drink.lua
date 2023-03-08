--auto cry :

while wait()do
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").RemoteEvents.ManageCrying:FireServer(unpack(args))
end

-- auto drink :

while wait()do
game:GetService("ReplicatedStorage").RemoteEvents.Drink:FireServer()
end