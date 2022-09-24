while true do
    local args = {
    [1] = "ProcessKey",
    [2] = {
        ["Key"] = "Q"
    }
}

game:GetService("ReplicatedStorage").NetworkFolder.GameFunction:InvokeServer(unpack(args))
wait(1)
local args = {
    [1] = "ProcessKey",
    [2] = {
        ["Key"] = "Q"
    }
}

game:GetService("ReplicatedStorage").NetworkFolder.GameFunction:InvokeServer(unpack(args))
wait(1)
end
-- feel free to try and make this better / faster i was lazy and just wanted to make sum for this game for the people playing