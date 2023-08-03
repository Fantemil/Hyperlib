while true do
task.wait()
local args = {
    [1] = "rebirth",
    [2] = {}
}
game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end