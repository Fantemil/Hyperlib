repeat
local args = {
    [1] = {
        ["Did Crash"] = false,
        ["Distance"] = 99999999999999,
        ["Friends Counter"] = 0,
        ["Tricks"] = 50000000000,
        ["Launch Speed"] = 7575,
        ["Style"] = 1,
        ["Height"] = 251.6,
        ["Trick Counter"] = 50000000000,
        ["Max Trick Multiplier"] = 0,
        ["Max Trick Time Length"] = 0
    }
}

game:GetService("ReplicatedStorage").RemoteFunctions.End_Round_Update:InvokeServer(unpack(args))
wait()
until false