local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")
local CoinEvent = Events:WaitForChild("CoinEvent")

while true do
  CoinEvent:FireServer()
  task.wait() -- Yield the thread for minimal delay
end