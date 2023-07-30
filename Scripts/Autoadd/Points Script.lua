getgenv().loop = true
while wait() do
if getgenv().loop == true then
local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RouteCompleted"):FireServer(unpack(args))
end
end