for _,v in ipairs(game.Workspace:GetChildren()) do
	if v.Name == "VIPDoor" then
		v:Destroy()
	elseif v.Name == "PLACA VIP" then
		v:Destroy()
	end
end