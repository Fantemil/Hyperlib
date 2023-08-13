	 for i,v in pairs(workspace:GetDescendants()) do
		 if v:IsA("BasePart") then
			 local dec = Instance.new("Texture", v)
			 dec.Texture = "rbxassetid://48715260"
			 dec.Face = "Top"
			 dec.StudsPerTileU = "1"
			 dec.StudsPerTileV = "1"
			 dec.Transparency = v.Transparency
			 v.Material = "Plastic"
			 local dec2 = Instance.new("Texture", v)
			 dec2.Texture = "rbxassetid://20299774"
			 dec2.Face = "Bottom"
			 dec2.StudsPerTileU = "1"
			 dec2.StudsPerTileV = "1"
			 dec2.Transparency = v.Transparency
			 v.Material = "Plastic"
		 end
	 end
	 game.Lighting.ClockTime = 12
	 game.Lighting.GlobalShadows = false
	 game.Lighting.Outlines = false
	 for i,v in pairs(game.Lighting:GetDescendants()) do
		 if v:IsA("Sky") then
			 v:Destroy()
		 end
	 end
	 local sky = Instance.new("Sky", game.Lighting)
	 sky.SkyboxBk = "rbxassetid://161781263"
	 sky.SkyboxDn = "rbxassetid://161781258"
	 sky.SkyboxFt = "rbxassetid://161781261"
	 sky.SkyboxLf = "rbxassetid://161781267"
	 sky.SkyboxRt = "rbxassetid://161781268"
	 sky.SkyboxUp = "rbxassetid://161781260"