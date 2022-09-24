local args = {
    [1] = {
        ["isWearing"] = false,
        ["accessoryType"] = Enum.AccessoryType.Hat,
        ["purchased"] = true,
        ["price"] = 0,
        ["image"] = "script by ov3rp0wered#8482",
        ["cleanName"] = "0",
        ["robloxId"] = 159229806, -- put gear ID here
        ["endDay"] = 2,
        ["releaseDay"] = 1
    }
}

game:GetService("ReplicatedStorage").RuntimeFunctions.ApplyAccessoryEvent:InvokeServer(unpack(args))