-- 0 (Normal), 1 (Grabbed), 2 (Killed, cannot be executed), 3 (Sleep), 4 (Electricity shock), 5 (Attacked)
local args = {
    [1] = "Hi im about to get shocked",
    [2] = 4
}

workspace:WaitForChild("Events"):WaitForChild("Data"):WaitForChild("NewChatMessage"):FireServer(unpack(args))
