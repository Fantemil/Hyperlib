local re = game:GetService("ReplicatedStorage").Medical_ReplicatedStorage.RemoteEvent_RequestHealth
if game:GetService("Workspace").ScrollingTerrainBounds:FindFirstChild("Ground") then
   game:GetService("Workspace").ScrollingTerrainBounds.Ground:Destroy()
end
while task.wait(0.1) do
   re:FireServer(25)
end