local player = game.Players.LocalPlayer.Character
while wait(2) do
 player.HumanoidRootPart.CFrame = game.Workspace.ChinaDetector.CFrame
   local teleportservice = game:GetService("TeleportService")
teleportservice:Teleport(game.PlaceId)
 end