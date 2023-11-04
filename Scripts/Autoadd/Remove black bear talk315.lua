while wait (0) do local args = {
    [1] = "Black Bear"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Quest"):FireServer(unpack(args))
end