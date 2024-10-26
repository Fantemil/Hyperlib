local function rollDice()
    while true do
        wait(0.01)
        game:GetService("ReplicatedStorage").Remotes.Roll:FireServer()
    end
end

local co = coroutine.create(rollDice)
coroutine.resume(co)