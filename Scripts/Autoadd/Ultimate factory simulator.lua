while true do
local args = {
[1] = {
["Value"] = 1000,
["Type"] = "Collect"
}
}

game:GetService("ReplicatedStorage"):WaitForChild("DropEvent"):FireServer(unpack(args))
Wait(0.1)
end