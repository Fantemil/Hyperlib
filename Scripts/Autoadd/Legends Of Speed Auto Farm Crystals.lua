while true do
    wait(0.1)
local args = {
    [1] = "collectOrb",
    [2] = "Gem",
    [3] = "City"
}

game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
end