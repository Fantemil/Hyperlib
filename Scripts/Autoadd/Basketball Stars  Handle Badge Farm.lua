getgenv().a = true

while a == true do
    wait()
    local args = {
    [1] = "Handles",
    [2] = "X"
}

game:GetService("ReplicatedStorage").ServerEvent:FireServer(unpack(args))
end