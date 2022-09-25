while wait() do
a = workspace.Map.Codes:GetChildren()
for i=1,#a do v = a[i]
if v.Back.Transparency ~= 1 then
game.RunService.Heartbeat:Wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end
end