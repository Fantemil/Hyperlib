--unsave
local args = {
    [1] = {
        ["R"] = "\255",
        ["G"] = 230,
        ["B"] = 230
    },
    [2] = "HairColor"
}

game:GetService("ReplicatedStorage").Remotes.Ui.CharacterCustColor:FireServer(unpack(args))

-- save

local args = {
    [1] = {
        ["R"] = 230,
        ["G"] = 230,
        ["B"] = 230
    },
    [2] = "HairColor"
}

game:GetService("ReplicatedStorage").Remotes.Ui.CharacterCustColor:FireServer(unpack(args))