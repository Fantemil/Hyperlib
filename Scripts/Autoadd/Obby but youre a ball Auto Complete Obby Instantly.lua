local teleserv = game:GetService("TeleportService")
local lp = game:GetService("Players").LocalPlayer
local args = {
    [1] = 121
}

game:GetService("ReplicatedStorage").SetCheckpoint:FireServer(unpack(args))
game:GetService("ReplicatedStorage").SetMax:FireServer(unpack(args))
wait(1)
teleserv:TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)