while wait() do
local args = {
    [1] = "getLevelUpRewards",
    [2] = {
        ["category"] = "diamond" -- if u want money then just change diamond into money
         }
    }
game:GetService("ReplicatedStorage").events.RemoteFunction_playerInfo:InvokeServer(unpack(args))
end