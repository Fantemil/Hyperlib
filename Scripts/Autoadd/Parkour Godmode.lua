local plr = game:service'Players'.LocalPlayer
if plr.Character:FindFirstChild('Humanoid') then
    plr.Character.Humanoid.MaxHealth = math.huge
    plr.Character.Humanoid.Health = math.huge
end