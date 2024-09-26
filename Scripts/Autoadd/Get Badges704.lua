local HRP = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in workspace:GetChildren() do
	if v.Name == "BadgeAwarder" then
		local Badge = v:FindFirstChild("Platform")
		if Badge then
			firetouchinterest(HRP, Badge, 1)
		end
	elseif v:IsA("Model") and v:GetPivot().Position == Vector3.new(1161.99951171875, 487.10003662109375, 1277.0001220703125) then
		local Badge = v.SpawnLocation
		firetouchinterest(HRP, Badge, 1)
	end
end