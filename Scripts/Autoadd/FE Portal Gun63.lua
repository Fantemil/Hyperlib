function make_portal_gun_and_GUI()
	portal_gun = Instance.new("Tool")
	portal_gun.Name = "Portal_Gun"
	portal_gun.Parent = workspace

	Handle = Instance.new("Part")
	Handle.Name = "Handle"
	Handle.Parent = portal_gun
	Handle.Color = Color3.fromRGB(231, 231, 236)
	Handle.Material = Enum.Material.Plastic
	Handle.Size = Vector3.new(1.045, 0.453, 0.453)
	Handle.Position = Vector3.new(-10.028, 4.312, 19.112)
	Handle.Orientation = Vector3.new(0, -180, 107.64)
	Handle.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	Handle.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	Handle.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	Handle.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	Handle.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	Handle.TopSurface = Enum.SurfaceType.SmoothNoOutlines

	Union = Instance.new("Part")
	Union.Color = Color3.fromRGB(0, 255, 0)
	Union.Material = Enum.Material.Plastic
	Union.Transparency = 0.45
	Union.Name = "Union"

	Union.Size = Vector3.new(0.304, 0.476, 0.302)
	Union.Position = Vector3.new(-8.972, 5.269, 19.079)
	Union.Orientation = Vector3.new(0, 180, -3.64)
	Union.Parent = portal_gun

	part1 = Instance.new("Part")
	part1.Name = "part1"
	part1.Color = Color3.fromRGB(17, 17, 17)
	part1.Material = Enum.Material.Plastic
	part1.Size = Vector3.new(0.2, 0.24, 0.99)
	part1.Position = Vector3.new(-8.716, 4.926, 19.111)
	part1.Orientation = Vector3.new(0, 180, -3.64)
	part1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part1.Parent = portal_gun

	part2 = Instance.new("Part")
	part2.Name = "part2"
	part2.Color = Color3.fromRGB(231, 231, 236)
	part2.Material = Enum.Material.Plastic
	part2.Size = Vector3.new(1.04, 0.3, 0.48)
	part2.Position = Vector3.new(-9.874, 4.855, 19.095)
	part2.Orientation = Vector3.new(-0.02, 90, 0)
	part2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part2.Shape = Enum.PartType.Cylinder
	part2.Parent = portal_gun

	part3 = Instance.new("Part")
	part3.Name = "part3"
	part3.Color = Color3.fromRGB(17, 17, 17)
	part3.Material = Enum.Material.Plastic
	part3.Size = Vector3.new(0.2, 0.47, 0.45)
	part3.Position = Vector3.new(-8.939, 4.948, 19.086)
	part3.Orientation = Vector3.new(3.47, -90, -90)
	part3.Shape = Enum.PartType.Cylinder
	part3.Parent = portal_gun

	part4 = Instance.new("Part")
	part4.Name = "part4"
	part4.Color = Color3.fromRGB(231, 231, 236)
	part4.Material = Enum.Material.Plastic
	part4.Size = Vector3.new(1.04, 0.3, 0.48)
	part4.Position = Vector3.new(-9.874, 4.845, 19.095)
	part4.Orientation = Vector3.new(-0.02, 90, 0)
	part4.Shape = Enum.PartType.Cylinder
	part4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part4.Parent = portal_gun

	part5 = Instance.new("Part")
	part5.Name = "part5"
	part5.Color = Color3.fromRGB(17, 17, 17)
	part5.Material = Enum.Material.Plastic
	part5.Parent = portal_gun
	part5.Size = Vector3.new(0.2, 0.2, 0.2)
	part5.Position = Vector3.new(-9.894, 4.93, 19.061)
	part5.Orientation = Vector3.new(11.67, -90, -90)

	part6 = Instance.new("Part")
	part6.Name = "part6"
	part6.Color = Color3.fromRGB(0, 255, 0)
	part6.Material = Enum.Material.Neon
	part6.Size = Vector3.new(0.2, 0.31, 0.2)
	part6.Position = Vector3.new(-8.715, 4.919, 19.095)
	part6.Orientation = Vector3.new(0, 180, -3.64)
	part6.Shape = Enum.PartType.Cylinder
	part6.Parent = portal_gun

	part7 = Instance.new("Part")
	part7.Name = "part7"
	part7.Color = Color3.fromRGB(231, 231, 236)
	part7.Material = Enum.Material.Plastic
	part7.Size = Vector3.new(1.04, 0.3, 0.48)
	part7.Position = Vector3.new(-9.874, 4.865, 19.095)
	part7.Orientation = Vector3.new(-0.02, 90, 0)
	part7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part7.Shape = Enum.PartType.Cylinder
	part7.Parent = portal_gun

	part8 = Instance.new("Part")
	part8.Name = "part8"
	part8.Color = Color3.fromRGB(248, 248, 248)
	part8.Material = Enum.Material.SmoothPlastic
	part8.Transparency = 1
	part8.Size = Vector3.new(0.2, 0.2, 0.2)
	part8.Position = Vector3.new(-8.952, 5.2, 19.088)
	part8.Orientation = Vector3.new(0, 0, 3.64)
	part8.Parent = portal_gun
	part8_smoke = Instance.new("Smoke")
	part8_smoke.Color = Color3.fromRGB(82, 255, 82)
	part8_smoke.Size = 0.1
	part8_smoke.RiseVelocity = 8
	part8_smoke.Parent = part8

	part9 = Instance.new("Part")
	part9.Name = "part9"
	part9.Color = Color3.new(117, 0, 0)
	part9.Material = Enum.Material.Plastic
	part9.Size = Vector3.new(0.24, 0.27, 0.54)
	part9.Position = Vector3.new(-9.543, 4.891, 19.086)
	part9.Orientation = Vector3.new(0, 180, -3.64)
	part9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part9_surface_GUI = Instance.new("SurfaceGui")
	part9_surface_GUI.Face = Enum.NormalId.Top
	part9_surface_GUI.CanvasSize = Vector2.new(800, 600)
	part9_surface_GUI.Parent = part9
	part9_textlabel = Instance.new("TextLabel")
	part9_textlabel.Parent = part9_surface_GUI
	part9_textlabel.BackgroundTransparency = 1
	part9_textlabel.BorderSizePixel = 1
	part9_textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	part9_textlabel.Text = "Player"
	part9_textlabel.TextScaled = false
	part9_textlabel.TextSize = 100
	part9_textlabel.TextStrokeTransparency = 1
	part9_textlabel.Size = UDim2.new(1, 0, 1, 0) -- {1, 0},{1, 0}
	part9.Parent = portal_gun

	part10 = Instance.new("Part")
	part10.Name = "part10"
	part10.Color = Color3.fromRGB(0, 255, 0)
	part10.Material = Enum.Material.Neon
	part10.Size = Vector3.new(0.2, 0.31, 0.2)
	part10.Position = Vector3.new(-8.715, 4.919, 19.456)
	part10.Orientation = Vector3.new(0, 180, -3.64)
	part10.Shape = Enum.PartType.Cylinder
	part10.Parent = portal_gun

	part11 = Instance.new("Part")
	part11.Name = "part11"
	part11.Color = Color3.fromRGB(0, 255, 0)
	part11.Size = Vector3.new(0.2, 0.31, 0.2)
	part11.Position = Vector3.new(-8.715, 4.919, 18.765)
	part11.Orientation = Vector3.new(0, 180, -3.64)
	part11.Shape = Enum.PartType.Cylinder
	part11.Parent = portal_gun

	part12 = Instance.new("Part")
	part12.Name = "part12"
	part12.Color = Color3.fromRGB(231, 231, 236)
	part12.Material = Enum.Material.Plastic
	part12.Size = Vector3.new(1.31, 0.27, 1.03)
	part12.Position = Vector3.new(-9.279, 4.886, 19.101)
	part12.Orientation = Vector3.new(0, 180, -3.64)
	part12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part12.Parent = portal_gun

	part14 = Instance.new("Part")
	part14.Name = "part14"
	part14.Color = Color3.fromRGB(231, 231, 236)
	part14.Material = Enum.Material.Plastic
	part14.Size = Vector3.new(1.04, 0.3, 0.48)
	part14.Position = Vector3.new(-9.874, 4.875, 19.095)
	part14.Orientation = Vector3.new(-0.02, 90, 0)
	part14.Shape = Enum.PartType.Cylinder
	part14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	part14.Parent = portal_gun

	portal_gun.GripForward = Vector3.new(0, 0, -1)
	portal_gun.GripPos= Vector3.new(0, -0.2, 0)
	portal_gun.GripRight = Vector3.new(0, 0, -1)
	portal_gun.GripUp = Vector3.new(1, 0.015, 0)

	portal_sound = Instance.new("Sound")
	portal_sound.Parent = portal_gun.Handle
	portal_sound.SoundId = "rbxassetid://1013378689"
	portal_sound.Volume = 2.5

	function Weld(x,y)
		local W = Instance.new("Weld")
		W.Part0 = x
		W.Part1 = y
		local CJ = CFrame.new(x.Position)
		local C0 = x.CFrame:inverse()*CJ
		local C1 = y.CFrame:inverse()*CJ
		W.C0 = C0
		W.C1 = C1
		W.Parent = x
	end

	for i,v in pairs(portal_gun:GetChildren()) do
		if v:IsA("Part") then
			Weld(v, portal_gun.Handle)
		end
	end

	portal_gun.Parent = game.Players.LocalPlayer.Backpack

	rick_portal_GUI = Instance.new("ScreenGui")
	rick_portal_GUI.Name = "rick_portal_GUI"
	frame = Instance.new("Frame")
	frame.Parent = rick_portal_GUI
	frame.BackgroundTransparency = 0
	textbox = Instance.new("TextBox")
	textbox.BorderSizePixel = 0
	textbox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
	textbox.Size = UDim2.new(0, 310, 0, 40) -- {0, 310},{0, 40}
	textbox.Position = UDim2.new(0.12, 5, 3.44, 290) -- {0.12, 5},{3.44, 290}
	textbox.Parent = frame
	textbox.BackgroundTransparency = 0.5
	textbox.TextScaled = true
	textbox.Text = "Shorted Real Player Name"
	rick_portal_GUI.Parent = game.Players.LocalPlayer.PlayerGui

	function open_portal()
		local player_to_teleport_to_name = game.Players.LocalPlayer.PlayerGui.rick_portal_GUI.Frame.TextBox.Text
		local player_to_teleport_to = nil
		for i,v in pairs(game.Players:GetPlayers()) do
			if v.Name:lower():match(player_to_teleport_to_name:lower()) then
				player_to_teleport_to = v
			end
		end
		portal_sound:Play()
		local portal = Instance.new("Part")
		portal.Name = "portal"
		portal.Transparency = 1
		portal.Size = Vector3.new(6, 8, 0.001)
		portal.Orientation = Vector3.new(0, -90, 0)
		portal.Parent = workspace
		portal.Anchored = true
		portal.CanCollide = false
		local decal1 = Instance.new("Decal")
		decal1.Face = Enum.NormalId.Front
		decal1.Texture = "rbxassetid://7493310007"
		decal1.Parent = portal
		local decal2 = Instance.new("Decal")
		decal2.Face = Enum.NormalId.Back
		decal2.Texture = "rbxassetid://7493310007"
		decal2.Parent = portal
		local player_head_position = game.Players.LocalPlayer.Character.Head.Position
		portal.Position = Vector3.new(player_head_position.X+5, player_head_position.Y, player_head_position.Z)
		local light1 = Instance.new("PointLight")
		light1.Parent = portal
		light1.Brightness = 7.12
		light1.Color = Color3.fromRGB(85, 255, 0)
		light1.Range = 9
		local function teleport_to_player()
			game.Players.LocalPlayer.Character:moveTo(player_to_teleport_to.Character.Head.Position)
			local portal2 = Instance.new("Part")
			portal2.Name = "portal2"
			portal2.Transparency = 1
			portal2.Size = Vector3.new(6, 8, 0.001)
			portal2.Orientation = Vector3.new(0, -90, 0)
			portal2.Parent = workspace
			portal2.Anchored = true
			portal2.CanCollide = false
			local decal12 = Instance.new("Decal")
			decal12.Face = Enum.NormalId.Front
			decal12.Texture = "rbxassetid://7493310007"
			decal12.Parent = portal2
			local decal22 = Instance.new("Decal")
			decal22.Face = Enum.NormalId.Back
			decal22.Texture = "rbxassetid://7493310007"
			decal22.Parent = portal2
			local player_head_position = game.Players.LocalPlayer.Character.Head.Position
			portal2.Position = player_to_teleport_to.Character.Head.Position
			local light2 = Instance.new("PointLight")
			light2.Parent = portal2
			light2.Brightness = 7.12
			light2.Color = Color3.fromRGB(85, 255, 0)
			light2.Range = 9
			portal:Remove()
			wait(3)
			portal2:Remove()
		end
		portal.Touched:Connect(teleport_to_player)
	end

	portal_gun.Activated:Connect(open_portal)
end

make_portal_gun_and_GUI()

while true do
	wait(0.1)
	if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
		while game.Players.LocalPlayer.Character.Humanoid.Health == 0 do
			wait(0.1)
		end
		wait(2)
		make_portal_gun_and_GUI()
	end
end