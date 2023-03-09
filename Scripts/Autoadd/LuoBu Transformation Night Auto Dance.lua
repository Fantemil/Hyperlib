_G.autodance = true

while _G.autodance do
game:GetService("ReplicatedStorage").RemoteEvents.DanceEvent:FireServer(math.random(1,100))
wait(26)
end