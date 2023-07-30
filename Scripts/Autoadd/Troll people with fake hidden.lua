local args = {
    [1] = {
        [1] = "events",
        [2] = "hiddenB"
    },
    [2] = "taunt1", -- Again, varies from taunt1-4
    [3] = game:GetService("Players").username.Character.HumanoidRootPart
}

workspace:WaitForChild("ServerStuff"):WaitForChild("playAudio"):FireServer(unpack(args))