wait(5)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local TeleportService = game:GetService("TeleportService")

firetouchinterest(player.Character.HumanoidRootPart, game:GetService("Workspace").Spawns.Winners, 0)
wait()
firetouchinterest(player.Character.HumanoidRootPart, game:GetService("Workspace").Spawns.Winners, 1)

wait(2)

TeleportService:Teleport(game.PlaceId, player)