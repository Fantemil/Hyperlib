--[[
    I don't even think I need to obfuscate this,
    If you use it make sure to credit "Nicuse#6163"

    --------------------------------------------------------

    Made by Nicuse#6163
]]

local args = {
    [1] = {
        ["Cash"] = math.huge
    }
}

game:GetService("ReplicatedStorage").Remotes.SetData:InvokeServer(unpack(args))

wait(1)

game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
