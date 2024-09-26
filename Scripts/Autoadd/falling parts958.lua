while true do
	wait(0.1)

	game:GetService("RunService").Stepped:Connect(function()
		local e = Instance.new("Part")
		e.Anchored = false
		e.Position = Vector3.new(math.random(1, 100), math.random(1, 100), math.random(1, 100))
		e.Parent = workspace
	end)
end
