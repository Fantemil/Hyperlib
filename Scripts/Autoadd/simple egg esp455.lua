local desc = game.Workspace:GetDescendants()
for _, v in pairs(desc) do
	local name = string.split(v.Name, " ")
	if not (#name < 2) then
		if name[#name] == "Egg" then
			--esp
			local hl = Instance.new("Highlight");hl.Parent = v;hl.Adornee = v
			--title
			local bui = Instance.new("BillboardGui", v)
			local text = Instance.new("TextLabel", bui)
			text.TextWrapped = true
			bui.Size = UDim2.new(0, 120, 0, 30)
			bui.AlwaysOnTop = true
			text.Size = UDim2.new(1,0,1,0)
			bui.ExtentsOffset = Vector3.new(0, 1, 0)
			text.Text = v.Name
		end
	end
end