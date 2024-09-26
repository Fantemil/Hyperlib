-- Making it math.huge will make your money go in the negatives
local args = {
    [1] = -9e17,
    [2] = "drive40k"
}

game:GetService("ReplicatedStorage").TaxCouncilor:FireServer(unpack(args))
