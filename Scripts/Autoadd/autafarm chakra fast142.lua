while true do 
local args = {
    [1] = {
        [1] = "ChargeStepingJump",
        [2] = true
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("RNet"):WaitForChild("Bridges"):WaitForChild("GameplayEvent_Event"):FireServer(unpack(args))
wait(0.01)
local args = {
    [1] = {
        [1] = "ChargeStepingJump",
        [2] = false
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("RNet"):WaitForChild("Bridges"):WaitForChild("GameplayEvent_Event"):FireServer(unpack(args))
end