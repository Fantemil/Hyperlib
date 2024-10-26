while true do

local args = {
    [1] = "roll"
}

game:GetService("ReplicatedStorage").Signal.Money:InvokeServer(unpack(args))
wait(0.1)
end