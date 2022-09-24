getgenv().a = true

while getgenv().a do wait()
    for i = 1,1000 do
local args = {
    [1] = "bank",
    [2] = "deposit",
    [3] = "0.5"
}

game:GetService("ReplicatedStorage").events.RemoteFunction:FireServer(unpack(args))
end
wait(2)
    end