while wait() do
local args = {
    [1] = "rebirth",
    [2] = {}
}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end