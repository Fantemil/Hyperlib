local args = {
    [1] = "Basic Egg",
    [2] = -math.huge
}
game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))
game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
-- inf rebirth


-- inf money
local args = {
    [1] = "Basic Egg",
    [2] = -math.huge
}

game:GetService("ReplicatedStorage").Remotes.Egg:InvokeServer(unpack(args))
