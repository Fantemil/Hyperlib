while true do
wait()
local args = {
    [1] = "Agarrado",
    [2] = "Values",
    [3] = "20"
}

game:GetService("ReplicatedStorage").Remotes.Pasante:FireServer(unpack(args))
end