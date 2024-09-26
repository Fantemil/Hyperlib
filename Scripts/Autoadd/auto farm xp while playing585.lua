
while true do 
local args = {
    [1] = "WR_S",
    [2] = {
        ["selfMul"] = 1
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Parkour"):WaitForChild("Move"):FireServer(unpack(args))
wait(0.1)
end