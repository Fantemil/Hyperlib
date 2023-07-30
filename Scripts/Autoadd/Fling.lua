AMOUNT = 1000
TICK = tick()
for p=0,AMOUNT do
	for i,v in pairs(workspace.Carts:GetChildren()) do
		if v.Name ~= "Cart" then continue end
		for i,v in pairs(v["Click To Regen Cart"]:GetChildren()) do
			if v:FindFirstChild("Up") then
				fireclickdetector(v.Up.Click)
				if not v.CarOn.Value then fireclickdetector(v.On.Click) end
			end
		end
	end
end
--- VVV USE THIS ONLY FOR DEBUGGING VVV ---
--rconsoleprint("Code took ".. tostring(math.round((tick()-TICK)*1000)).."ms\n")