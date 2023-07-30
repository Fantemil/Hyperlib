while task.wait() do
local args = {
    [1] = "Limited",
    [2] = {
        ["PinkFlamingo"] = true,
        ["PurpleDragon"] = true,
        ["EvilOverseer"] = true
    },
    [3] = true,
    [4] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.4.7"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("EggService"):WaitForChild("RF"):WaitForChild("purchaseEgg"):InvokeServer(unpack(args))
end