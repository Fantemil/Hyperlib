
local args = {
    [1] = getNil("UncommonStick", "Tool"),
    [2] = 999999 --U can Change it
}

game:GetService("ReplicatedStorage"):WaitForChild("Crates"):WaitForChild("RemoteEvents"):WaitForChild("Sell"):FireServer(unpack(args))
