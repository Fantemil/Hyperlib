local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in workspace:GetChildren() do
	if v.Name == "BadgeAwarder" then
		local Badge = v.Platform
		firetouchinterest(HRP, Badge, 1)
	end
end