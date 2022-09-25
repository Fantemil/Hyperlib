 for i=1,40 do -- lower the loop if you have small inventory
local args = {
    [1] = "PET",
    [2] = " ",
    [3] = "Sparks Kilowatt"
}

game:GetService("ReplicatedStorage").Remotes.AwardPrize:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = "PET",
    [2] = " ",
    [3] = "Fey Yoshida"
}

game:GetService("ReplicatedStorage").Remotes.AwardPrize:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = "PET",
    [2] = " ",
    [3] = "AJ Striker"
}

game:GetService("ReplicatedStorage").Remotes.AwardPrize:FireServer(unpack(args))
wait(0.2)
local args = {
    [1] = "PET",
    [2] = " ",
    [3] = "Wren Brightblade"
}

game:GetService("ReplicatedStorage").Remotes.AwardPrize:FireServer(unpack(args))
wait(0.2)
end

print("pets go brrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr")