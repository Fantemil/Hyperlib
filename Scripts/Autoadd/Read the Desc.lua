while wait() do
local args = {
    [1] = "Consume",
    [2] = "Lemonade"
}

game:GetService("ReplicatedStorage").Remotes.Backpack:FireServer(unpack(args))
end