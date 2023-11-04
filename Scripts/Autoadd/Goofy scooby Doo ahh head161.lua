local args = {
    [1] = "ScoobyDoo2023HalloweenEvent",
    [2] = "MysteryComplete",
    [3] = 1,
    [4] = false
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ProgressionDataService"):WaitForChild("RF"):WaitForChild("UgcEventProgressSet"):InvokeServer(unpack(args))





local args = {
    [1] = "ScoobyDoo2023HalloweenEvent",
    [2] = "ScoobySnacks",
    [3] = 25,
    [4] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ProgressionDataService"):WaitForChild("RF"):WaitForChild("UgcEventProgressSet"):InvokeServer(unpack(args))





local args = {
    [1] = 2000,
    [2] = "AWOG"
}

game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("ProgressionDataService"):WaitForChild("RF"):WaitForChild("GiveExp"):InvokeServer(unpack(args))