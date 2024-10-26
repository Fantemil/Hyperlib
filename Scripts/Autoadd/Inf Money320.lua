-- Script Made By aarons1454
-- Click on go, then execute the script & rejoin

local args = {
    [1] = {
        ["distance"] = 103900007.8097229003906,
        ["rewards"] = 35000000000000,
        ["obstaclesBroken"] = 1790000000000
    }
}

game:GetService("ReplicatedStorage").Remotes.endRun:FireServer(unpack(args))