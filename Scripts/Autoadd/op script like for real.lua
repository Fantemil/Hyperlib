script 1 (spamming big zombie)

while true do
local args = {
    [1] = "ZombieGiant2",
    [2] = 0
}

game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RaidService"):WaitForChild("RF"):WaitForChild("SpawnMob"):InvokeServer(unpack(args))
    wait(0.01)
end


script 2 ( give reward cash )

local args = {
    [1] = 69696969696969
}

game:GetService("ReplicatedStorage"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RaidService"):WaitForChild("RF"):WaitForChild("GiveReward"):InvokeServer(unpack(args))

-- you can change the money --