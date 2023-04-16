for i = 1, 9999 do
while game:GetService("RunService").RenderStepped:Wait() do
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Gameplay"):WaitForChild("MustCrossProperly"):FireServer()
end
end