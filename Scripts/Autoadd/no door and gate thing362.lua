
task.spawn(function()
	while true do task.wait(0.1)
		for i, v in next, game:GetService("CollectionService"):GetTagged("Door") do
			if v:FindFirstChild("Model") then
				for i2,v2 in next, v.Model:GetChildren() do
					if v2:IsA("BasePart") then
						v2.CanCollide = not bool
						v2.Transparency = 1
					end
				end
			end
		end
		for i, v in next, game:GetService("CollectionService"):GetTagged("Door2") do
			if v:FindFirstChild("Model") then
				for i2,v2 in next, v.Model:GetChildren() do
					if v2:IsA("BasePart") then
						v2.CanCollide = not bool
						v2.Transparency = 1
					end
				end
			end
		end
	end
end)