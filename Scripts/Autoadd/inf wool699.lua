local function getWool()
    local args = {
        [1] = 18,
        [2] = Vector3.new(-162.36593627929688, 3.311232566833496, 938.9034423828125)
    }
    game:GetService("ReplicatedStorage").Signals.RemoteEvents.GetWoolRemote:FireServer(unpack(args))
end

while true do
    getWool()
    wait()
end
