while true do
local args = {
    [1] = "Shoot",
    [2] = "Good"
}

game:GetService("ReplicatedStorage").Activities.Events.Basketball:FireServer(unpack(args))
wait()
end