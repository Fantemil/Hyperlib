while true do
    wait(.1)
local args = {
    [1] = 0
}

game:GetService("ReplicatedStorage").Rebirth:FireServer(unpack(args))
end