--[[
                     _._     _,-'""`-._
        (,-.`._,'(       |\`-/|
            `-.-' \ )-`( , o o)
                  `-    \`_`"'-

        used to get to #1 on the leaderboard about ~2-3 months ago :D
]]

local Services = {
	Workspace = game:GetService("Workspace"), RunService = game:GetService("RunService"), Players = game:GetService("Players"), ReplicatedStorage = game:GetService("ReplicatedStorage")
}

local Objects = {
	LocalPlayer = Services.Players.LocalPlayer
}

local Settings = {
	Multiplier = {X = 0.45, Y = 0.45, Z = 0.45},
	Close = 9,
	Visualize = {Transparency = 1},
	Notifications = {Enabled = false}
}

local Notifications = loadstring(game:HttpGet("https://file.exploiting.club/scripts/Notifications.lua"))()

local update_properties = function(instance, properties)
	for property, value in pairs(properties) do
		instance[property] = value
	end

	return instance
end

local get_ball_velocity = function()
	for index, ball in pairs(Services.Workspace.Balls:GetChildren()) do
		if ball.BrickColor == BrickColor.new("Dark blue") or ball.Velocity.Magnitude > 0 then
			return ball.Velocity
		end
	end

	return Vector3.new(0, 0, 0)
end

local get_ball_distance = function()
	for index, ball in pairs(Services.Workspace.Balls:GetChildren()) do
		local Magnitude = (Objects.LocalPlayer.Character.HumanoidRootPart.Position - ball.Position).Magnitude

		return Magnitude
	end

	return 999999999999999
end

local is_being_targetted = function()
	for index, ball in pairs(Services.Workspace.Balls:GetChildren()) do
		if ball.BrickColor == BrickColor.new("Really red") then
			return true
		end
	end

	return false
end

local attempt_block = function()
	Services['ReplicatedStorage'].Remotes.ParryAttempt:FireServer(0.5, CFrame.new(-291.19928, 115.740654, 24.367424, 0.999969125, 0.00201334385, -0.00759521406, 1.16415322e-10, 0.966615558, 0.25623104, 0.00785753317, -0.256223142, 0.966585755), {}, {[1] = 1575, [2] = 158})
end


local Visualize = update_properties(Instance.new("Part"), {
	Name = "Visualize", CanCollide = false, Shape = Enum.PartType.Ball, Material = Enum.Material.ForceField, Parent = workspace, Transparency = Settings.Visualize.Transparency
})

Visualize.Size = Vector3.new(10, 10, 10)

--[[
Removed for now

Services.RunService.Heartbeat:Connect(function()
	local Velocity, Closest = get_ball_velocity(), get_closest_player_distance()

	if Visualize.Parent == Services['Workspace'] then
		Visualize.CFrame = Objects['LocalPlayer'].Character.HumanoidRootPart.CFrame
		Visualize.Size = Vector3.new(10 + (Velocity.Magnitude * Settings.Multiplier.X), 10 + (Velocity.Magnitude * Settings.Multiplier.Y), 10 + (Velocity.Magnitude * Settings.Multiplier.Z))
		Visualize.Transparency = Settings.Visualize.Transparency

		if Closest['Distance'] <= Settings.Close and get_ball_distance() <= Settings.Close and is_being_targetted() then
			attempt_block()
		end
	end
end)
]]

Services.RunService.Heartbeat:Connect(function()
	local Velocity, Closest = get_ball_velocity()

	if Visualize.Parent == Services['Workspace'] then
		Visualize.CFrame = Objects['LocalPlayer'].Character.HumanoidRootPart.CFrame
		Visualize.Size = Vector3.new(10 + (Velocity.Magnitude * Settings.Multiplier.X), 10 + (Velocity.Magnitude * Settings.Multiplier.Y), 10 + (Velocity.Magnitude * Settings.Multiplier.Z))
		Visualize.Transparency = Settings.Visualize.Transparency
	end
end)

local Parried, Time = false, tick()

Visualize.Touched:Connect(function(touched)
	if is_being_targetted() and Parried == false and Visualize.Parent == Services['Workspace'] and touched.Parent == Services['Workspace'].Balls then
		Parried = true
		Time = tick()

		attempt_block()
		
		if Settings.Notifications.Enabled then
			Notifications.Notify({
				Title = "Hit Ball",
				Description = "The ball has been parried!",
				Duration = 0.5
			})
		end

		coroutine.resume(coroutine.create(function()
			repeat task.wait() until is_being_targetted() == false or get_ball_velocity().Magnitude < 0.3

			Parried = false
		end))
	end
end)

Notifications.Notify({
	Title = "Script has loaded!",
	Description = "To change configuration, please reload the script!",
	Duration = 3
})