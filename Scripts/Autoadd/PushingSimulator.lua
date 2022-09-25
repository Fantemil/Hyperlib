game.RunService.Stepped:Connect(function()
game.Players.LocalPlayer.Backpack.Push.PushEvent:FireServer()
end)
while wait() do
a = game.Players:GetPlayers()
for i =2,#a do v=a[i]
pcall(function()
game.Players.LocalPlayer.Character["Local Ragdoll"].Disabled = true --ik i can do characteradded eat shit
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,2)
wait(0.1)
end)
end
end