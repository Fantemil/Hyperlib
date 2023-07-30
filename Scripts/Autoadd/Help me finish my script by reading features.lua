local players = game:GetService("Players"):GetPlayers()
for _, player in ipairs(players) do
	local tool = player.Character and player.Character:FindFirstChildWhichIsA("Tool")
	if tool then
		if tool.Name == "Knife" then
			print(player.Name .. " has a Knife")
		elseif tool.Name == "Revolver" then
			print(player.Name .. " has a Revolver")
		end
	end
end