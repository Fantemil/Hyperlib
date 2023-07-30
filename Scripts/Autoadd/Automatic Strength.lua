-- For Anime Fighting Simulator
while true do
    wait(0.000001)
local args = {
    [1] = "Stat",
    [2] = "Strength"
}

game:GetService("ReplicatedStorage"):WaitForChild("RSPackage"):WaitForChild("Events"):WaitForChild("StatFunction"):InvokeServer(unpack(args))
local args = {
    [1] = "SpecialAction",
    [2] = {
        ["Request"] = "Click"
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("RSPackage"):WaitForChild("Events"):WaitForChild("GeneralEvent"):FireServer(unpack(args))
end