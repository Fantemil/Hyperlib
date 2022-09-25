-- Script Inf Gems

while wait() do
local args = {
   [1] = "gem18"
}

game:GetService("ReplicatedStorage").Remotes.addGems:FireServer(unpack(args))
end

-- Script Inf Money

while wait() do
local args = {
    [1] = "cash18"
}

game:GetService("ReplicatedStorage").Remotes.pickUpCash:FireServer(unpack(args))
end