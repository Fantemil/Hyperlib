while true do
    

local args = {
    [1] = "Strength"
}

game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))


local args = {
    [1] = "Endurance"
}

game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))


local args = {
    [1] = "Psychic"
}

game:GetService("ReplicatedStorage").Events.Train:FireServer(unpack(args))


    wait()
end