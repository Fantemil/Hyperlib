local Functions = {}

function Functions:BeatObby()
	for i,v in next, game:GetService("Workspace").Stages:GetChildren() do
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
		firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
	end
end

Functions:BeatObby()