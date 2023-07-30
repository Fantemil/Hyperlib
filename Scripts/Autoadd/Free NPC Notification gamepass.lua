local args = {
    [1] = "NPCNotification",
    [2] = game:GetService("Players").LocalPlayer,
    [3] = "ON"
}

game:GetService("Players"):WaitForChild("YourUsername"):WaitForChild("PlayerGui"):WaitForChild("Config"):WaitForChild("Frame"):WaitForChild("ScrollingFrame"):WaitForChild("Items"):WaitForChild("Des"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
