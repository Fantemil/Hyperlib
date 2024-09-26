if game.PlaceId == 4104106043 then
	local space=game:GetService("Workspace")
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = space.Lobby.Teleporters.Enter.CFrame
	wait(.5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = space.Lobby.SpawnLocation.CFrame
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
end