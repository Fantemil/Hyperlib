while true do

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Events.Reward:FireServer(unpack(args))
wait(0.1)
end
