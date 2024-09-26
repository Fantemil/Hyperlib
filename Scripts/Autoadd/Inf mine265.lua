local args = {
    [1] = "Stone"
}

local destroyedBlockCoroutine = coroutine.create(function()
    while true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlotService"):WaitForChild("RE"):WaitForChild("DestroyedBlock"):FireServer(unpack(args))
        wait(0.05)
    end
end)

local clickCoroutine = coroutine.create(function()
    while true do
        game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ClickService"):WaitForChild("RF"):WaitForChild("Click"):InvokeServer()
        wait(0.05)
    end
end)

coroutine.resume(destroyedBlockCoroutine)
coroutine.resume(clickCoroutine)