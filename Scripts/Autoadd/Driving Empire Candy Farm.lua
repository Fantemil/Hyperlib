while wait(1) do
for i,v in pairs(game:GetService("Workspace").Game.Halloween.Candy.CandyDrops:GetChildren()) do
     if v.Name == "Candy" then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
           game.Players.LocalPlayer.Character.Humanoid.Jump = true
     end
end
end