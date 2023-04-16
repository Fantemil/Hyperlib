while wait() do
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("Knif"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PlayerService"):WaitForChild("RF"):WaitForChild("AddPlayerPower"):InvokeServer(unpack(args))
end