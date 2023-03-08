while task.wait() do
local args = {
    [1] = "Single",
    [2] = "Z6", -- to hatch a different egg change the number to the zone number (6 zones 6 best)
    [3] = true,
    [4] = {},
    [5] = false
}
game:GetService("ReplicatedStorage").Events.petHatching:FireServer(unpack(args))
end