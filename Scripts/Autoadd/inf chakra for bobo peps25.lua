while true do 
local args = {
    [1] = {
        [1] = "ChargeChakra",
        [2] = true
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("RNet"):WaitForChild("Bridges"):WaitForChild("GameplayEvent_Event"):FireServer(unpack(args))
Wait(5)
end