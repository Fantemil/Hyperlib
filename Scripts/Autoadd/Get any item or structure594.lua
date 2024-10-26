--gun, golden banana, look in remotestorage under items, anything in there can be spawned
local args = {
    [1] = 100,
    [2] = "gun"
}

workspace:WaitForChild("Fishing Raft"):WaitForChild("Base"):WaitForChild("ReportFishingResult"):FireServer(unpack(args))
