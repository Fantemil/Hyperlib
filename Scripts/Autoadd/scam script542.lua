local ScreenGui = Instance.new("ScreenGui")
local toggle = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

toggle.Name = "toggle"
toggle.Parent = ScreenGui
toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
toggle.Position = UDim2.new(0.060396038, 0, 0.296819806, 0)
toggle.Size = UDim2.new(0, 209, 0, 58)
toggle.Font = Enum.Font.SourceSans
toggle.Text = "Toggle"
toggle.TextColor3 = Color3.fromRGB(255, 0, 4)
toggle.TextScaled = true
toggle.TextSize = 14.000
toggle.TextWrapped = true
toggle.Active = true
toggle.Draggable =false
toggle.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(38.77303695678711, 19.76632308959961, -371.5382080078125))
	wait(0.2)
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	wait(0.2)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(38.987483978271484, 19.518075942993164, -355.6903991699219))
	wait(0.2)
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)