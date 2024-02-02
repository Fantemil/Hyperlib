-- // Dependencies
local ReplicatedStorage, Players = game:GetService("ReplicatedStorage"), game:GetService("Players")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes, Balls = ReplicatedStorage:WaitForChild("Remotes", 15), workspace:WaitForChild("Balls", 15)
local Notifications = loadstring(game:HttpGet("https://scripts.exploiting.club/scripts/AkaliNotifications.lua"))()

-- // Configuration
getgenv().Settings = {
	Notifications = {
		Enabled = false
	}
}

-- // Main Script
if Remotes ~= nil and Balls ~= nil then
	Notifications.Notify({Title = "Script Loaded", Description = "We have succesfully loaded the script!", Duration = 3})
	
	Balls.ChildAdded:Connect(function(Ball)
		if Ball:IsA("BasePart") and Ball.Parent == Balls and Ball:GetAttribute("realBall") then
			local lastPosition, lastTick = Ball.Position, tick()

			Ball:GetPropertyChangedSignal("Position"):Connect(function()
				if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Highlight") then 
					local Distance, Velocity = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude, (lastPosition - Ball.Position).Magnitude

					if (Distance / Velocity) <= 10.3 then
						Remotes:WaitForChild("ParryButtonPress"):Fire()
						
						if getgenv().Settings.Notifications.Enabled then
							Notifications.Notify({Title = "Hit", Description = "The ball has been hit!", Duration = 0.5})
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
	Notifications.Notify({Title = "Incorrect Game", Description = "We could not find 'Balls' and 'Remotes' within the game! (Not Blade Ball?)", Duration = 10})
end