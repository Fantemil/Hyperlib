-- click
game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()

-- auto click
while true do
    wait()
game:GetService("ReplicatedStorage").RemoteEvents.Click:FireServer()

    end

-- instant zone 8

local args = {
    [1] = "Zone8"
}

game:GetService("ReplicatedStorage").RemoteEvents.ZoneMulti:FireServer(unpack(args))