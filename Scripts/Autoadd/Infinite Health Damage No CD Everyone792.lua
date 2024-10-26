-- NoCD
local args = {
    [1] = "NoCooldown"
}

game:GetService("ReplicatedStorage").Settings:FireServer(unpack(args))
-- Infinite Health
local args = {
    [1] = "Health",
    [2] = 9e999
}

game:GetService("ReplicatedStorage").Settings:FireServer(unpack(args))
-- Infinite Damage
local args = {
    [1] = "Damage",
    [2] = 9e999
}

game:GetService("ReplicatedStorage").Settings:FireServer(unpack(args))