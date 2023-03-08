while wait() do
local args = {
    [1] = 16, --put any if you want to collect that part recommended dont mess with it though.
    [2] = Vector3.new(224.57415771484375, 5.614215850830078, 225.75262451171875)
}

game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
end