spawn(function()
	while wait() do
		for i,v in pairs(game.workspace.CubeEvent.Cubes:GetDescendants()) do
			if v.Name == "TouchInterest" and v.Parent then
				firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
				wait()
			end
		end
	end
end)