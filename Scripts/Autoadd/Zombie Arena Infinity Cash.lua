while true do
wait()
local args = {
    [1] = "GrantRupee",
    [2] = "GreenRupee"
}

game:GetService("ReplicatedStorage").Network.RewardSig:FireServer(unpack(args))
end