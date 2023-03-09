for _,troll in pairs(game.Players:GetPlayers()) do
if troll.Name ~= game.Players.LocalPlayer.Name then
game:GetService("Players").LocalPlayer.Character.Defibs.defibusing.punched:InvokeServer(troll.Character.Humanoid, troll.Character.HumanoidRootPart)
end
end