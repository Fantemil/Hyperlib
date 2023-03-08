local RunService = game:GetService("RunService")
local Modules = game.ReplicatedStorage:WaitForChild("Modules")
local Network = require(Modules:WaitForChild("Network"))
local Callback = Network

RunService.Heartbeat:Connect(function()
 Callback.send("pa")
end)