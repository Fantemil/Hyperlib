for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 0)
wait()
firetouchinterest(v, game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, 1)
end