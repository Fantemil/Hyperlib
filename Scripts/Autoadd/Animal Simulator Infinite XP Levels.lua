while true do
local args = {
    [1] = workspace.Eggs.Egg7
}

game:GetService("ReplicatedStorage").EggEvent:FireServer(unpack(args))

local args = {
    [1] = workspace.Treasures.Treasure1
}

game:GetService("ReplicatedStorage").TreasureEvent:FireServer(unpack(args))
wait(0.5)
end