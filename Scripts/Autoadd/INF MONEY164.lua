_G.Clean = true -- Change to false to stop.
while _G.Clean and wait(.1) do
game:GetService("ReplicatedStorage").Remotes.RefillRemote:FireServer(true)
game:GetService("ReplicatedStorage").Remotes.SurfaceCompleted:FireServer(math.huge, math.huge)
game:GetService("ReplicatedStorage").Remotes.ClientFrameData:FireServer(math.huge , true, true, math.huge)
end