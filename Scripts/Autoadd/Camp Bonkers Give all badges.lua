--Made By: Shag420#6729

for count = 1, 25 do
task.wait()
local args = {
    [1] = "BadgeEarned",
    [2] = count
}

game:GetService("ReplicatedStorage").F.RPC:InvokeServer(unpack(args))
end