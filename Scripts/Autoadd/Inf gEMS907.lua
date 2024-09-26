while true do
local args = {
    [1] = "BouncyCarGreen54"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("BreakTheCrate"):FireServer(unpack(args))
wait(0.001)
end
