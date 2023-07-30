for _,v in ipairs(game.Workspace.SearchItems:GetChildren()) do
	if v:IsA("Model") then
		fireproximityprompt(v.ProximityPrompt)
	end
end