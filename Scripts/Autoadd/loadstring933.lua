getgenv().stop = not stop
while game:GetService("RunService").RenderStepped:wait() do
   if not stop then break end
   game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-287, 239, 154)
   game:GetService("ReplicatedStorage").Remotes.Freeze:FireServer()
end