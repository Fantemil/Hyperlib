while wait() do
local args = {
    [1] = 99999,
    [2] = "8NYEG50HeTQHspveEFhS"
}

game:GetService("ReplicatedStorage"):WaitForChild("Damage"):FireServer(unpack(args))


end