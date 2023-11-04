for _, item in pairs(game:GetDescendants()) do
	if item.Name == "Dash" and item:IsA("RemoteEvent") then
		while true do
			item:FireServer()
			wait()
		end
	end
end