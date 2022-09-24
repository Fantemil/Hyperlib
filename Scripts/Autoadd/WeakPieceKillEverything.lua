local plr = game.Players.LocalPlayer
while wait(0.2) do
   game:GetService("ReplicatedStorage").Remote.Skills:FireServer("HitboxCombat", 10000, plr.Character.HumanoidRootPart.CFrame, 9e18, nil, plr.Character)
end