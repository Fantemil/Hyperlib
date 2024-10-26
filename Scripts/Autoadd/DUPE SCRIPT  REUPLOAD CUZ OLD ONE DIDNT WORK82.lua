
local args = {
    [1] = "HUD",
    [2] = "Inventory",
    [3] = "Drop",
    [4] = "Item u wanna dupe here",
    [5] = -999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
}

game:GetService("ReplicatedStorage").Remotes.Sync:InvokeServer(unpack(args))