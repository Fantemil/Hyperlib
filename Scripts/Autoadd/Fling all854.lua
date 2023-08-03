for _,v in pairs (game:GetService("Players"):GetPlayers()) do
if v~= game:GetService("Players").LocalPlayer then
game:GetService("ReplicatedStorage").Events.Slap:FireServer(v.Character, 35, 999999, 5, "Default", 1.35)
end
end