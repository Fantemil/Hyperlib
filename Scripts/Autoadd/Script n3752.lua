for _, v in pairs(game.Workspace.TOWERS:GetDescendants()) do
	if v.Name == "Original coffee tower clear" or v.Name == "Green matcha toer clear" or v.Name == "Secret..." then
		local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
		firetouchinterest(v, plr, 0)
		firetouchinterest(v, plr, 1)
		wait(0.1)
	end
end