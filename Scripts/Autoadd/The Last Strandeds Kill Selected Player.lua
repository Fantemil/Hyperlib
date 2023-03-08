local Name = ""
for _, instance in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if instance:IsA("LocalScript") and instance.Name ~= "ClickDetectorScript" then
getgenv().Code1 = getupvalue(getsenv(instance).afflictstatus, 16)
getgenv().Code2 = getupvalue(getsenv(instance).afflictstatus, 17)
end
end
for _, player in pairs(game.Players:GetPlayers()) do
if string.lower(player.Name) == string.lower(Name) or string.lower(player.DisplayName) == string.lower(Name) then
workspace.ServerStuff.dealDamage:FireServer("revolver_shot", { player.Character, player.Character.Humanoid.Health }, getgenv().Code1, getgenv().Code2)
break
end
end