-- You may want to wait until the real spam happens

repeat task.wait() until game:IsLoaded() -- Remove this if you want it just makes sure game is fully loaded

getgenv().tsAnnoy = true
local tsDelay = 0.1 -- Set this to your preferred chaotic repeat delay

spawn(function()
	while tsAnnoy do
		game:GetService("ReplicatedStorage").TimestopEvent:FireServer()
		task.wait(tsDelay)
	end
end)