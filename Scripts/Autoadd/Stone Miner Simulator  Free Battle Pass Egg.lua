getgenv().auto = true
while task.wait() and auto do
local args = {
    [1] = "gacha_one",
    [2] = {
        ["1"] = 15}
}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end