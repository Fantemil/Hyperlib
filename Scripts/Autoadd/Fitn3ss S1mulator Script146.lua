while wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Lift"):FireServer()

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Sell"):FireServer()

local args = {
    [1] = "Morphs"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy All"):FireServer(unpack(args))

local args = {
    [1] = "Auras"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy All"):FireServer(unpack(args))

local args = {
    [1] = "Weights"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy All"):FireServer(unpack(args))

local args = {
    [1] = "Bodies"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy All"):FireServer(unpack(args))

local args = {
    [1] = "Tiers"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Buy All"):FireServer(unpack(args))
end