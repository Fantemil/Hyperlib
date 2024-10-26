--IMPORTANT: Execute The Script Seperately


--Auto Strength

local args = {
    [1] = "Blue Mountain"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Network"):WaitForChild("RemoteEventStorage"):WaitForChild("Lift Weight"):FireServer(unpack(args))

--Open The Best Egg

local args = {
    [1] = "Anime",
    [2] = 50
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Network"):WaitForChild("RemoteEventStorage"):WaitForChild("Open Egg"):FireServer(unpack(args))

--Auto Rebirth

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Network"):WaitForChild("RemoteEventStorage"):WaitForChild("Rebirth"):FireServer()

