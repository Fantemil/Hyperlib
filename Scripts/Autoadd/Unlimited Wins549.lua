while true do
     wait(0.00001)

local args = {
    [1] = "win",
}

game:GetService("ReplicatedStorage").Events.Mission:FireServer(unpack(args))
end