for _, item in pairs(workspace:GetDescendants()) do
	if item:IsA("Humanoid") then
		local highlight = Instance.new("Highlight")
		local parent = item.Parent
		if parent then
			local plr = game.Players:GetPlayerFromCharacter(parent)
			if not plr then
				highlight.Parent = parent
			end
		end
	end
end