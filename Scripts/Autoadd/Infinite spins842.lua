-- if you want it to set back to normal, type in the first argument the value you want to change it to
local args = {
 [1] = 1,
 [2] = 1696189672
}

game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("DailySpin"):WaitForChild("SpinEvent"):FireServer(unpack(args))