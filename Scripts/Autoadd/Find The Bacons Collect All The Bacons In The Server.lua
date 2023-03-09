local plr = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart

for i ,v in pairs(game:GetService("Workspace").Bacons:GetChildren()) do
   firetouchinterest(v, plr, 0)
   wait()
   firetouchinterest(v, plr, 1)
end