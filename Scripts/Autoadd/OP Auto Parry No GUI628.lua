local ReplicatedStorage, Players = game:GetService("ReplicatedStorage"), game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local RemoteLocation = ReplicatedStorage:WaitForChild("Remotes", 5)
local BallLocation = workspace:WaitForChild("Balls", 5)
local Notifications = loadstring(game:HttpGet("https://scripts.exploiting.club/scripts/Notify.lua"))()

getgenv().Config = {
	Notify = {On = false}
}

if RemoteLocation ~= nil and BallLocation ~= nil and getgenv().Settings ~= nil then
	Notifications.Notify({Title = "OP AUTO PARRY", Description = "Made by Evan4821 (Loaded!)", Duration = 3})

	BallLocation.ChildAdded:Connect(function(Ball)
		if Ball:IsA("BasePart") and Ball:GetAttribute("realBall") then
			local lastPosition, lastTick = Ball.Position, tick()

			Ball:GetPropertyChangedSignal("Position"):Connect(function()
				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Highlight") then 
					local Distance, Velocity = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude, (lastPosition - Ball.Position).Magnitude

					if (Distance / Velocity) <= 10.3 then
						RemoteLocation:WaitForChild("ParryButtonPress"):Fire()

						if getgenv().Config.Notify.On then
							Notifications.Notify({Title = "parried", Description = "ball has been paarried!", Duration = 0.5})
						end
					end
				end

				if (tick() - lastTick >= 1/60) then
					lastTick = tick()
					lastPosition = Ball.Position
				end
			end)
		end
	end)
else
	Notifications.Notify(
		{Title = "Wrong Game", Description = "This only works in Blade ball!", Duration = 10}
	)
end