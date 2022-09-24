while true do
    wait(0.0000000000000001)
local args = {
    [1] = "NPlrIB",
    [2] = false,
    [3] = {
        ["TweenSize"] = {},
        ["SetText"] = {
            [1] = {
                ["Name"] = "HPText",
                ["Text"] = "HP 999999999/99999999"
            },
            [2] = {
                ["Name"] = "PvP",
                ["Text"] = "[Owner]"
            },
            [3] = {
                ["Name"] = "PlrName",
                ["Text"] = "BasicallyRaj (Level 9999)"
            }
        }
    }
}

game:GetService("ReplicatedStorage").FUNCTION:InvokeServer(unpack(args))
end