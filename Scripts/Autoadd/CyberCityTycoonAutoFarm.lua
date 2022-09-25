local hb = game:GetService("RunService").Heartbeat
while true and hb:Wait() do
game:GetService("ReplicatedStorage").RE.Robbery:FireServer()
end