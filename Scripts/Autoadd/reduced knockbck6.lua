local function anti_kb(char)
	local humanoid = char:WaitForChild("Humanoid")
	local rootpart = char:WaitForChild("HumanoidRootPart")

	local lastsafe = rootpart.Velocity

	local mainloop
	mainloop = game:GetService("RunService").Heartbeat:Connect(function()
		if rootpart.Parent and (rootpart.Velocity * Vector3.new(1, 0, 1)).Magnitude > (humanoid.WalkSpeed * 2) then
			warn("Clearing velocity..")
			for i = 1, 50 do
				task.wait()
				rootpart.Velocity = Vector3.new(0.001, 0.001, 0.001)
			end
		end
	end)
	print("anti kb active")
end
anti_kb(game.Players.LocalPlayer.Character)
game.Players.LocalPlayer.CharacterAdded:Connect(anti_kb)
