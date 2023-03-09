function attack(hp,hum,dmg)
   workspace.ignore[game.Players.LocalPlayer.Name..""].Baton.Events.DamagePlayer:FireServer(game:GetService("Players").LocalPlayer, hp, hum, tonumber(dmg), workspace.ignore[game.Players.LocalPlayer.Name..""].Baton.Handle.HitSound2)
end

game:GetService("RunService").RenderStepped:connect(function()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name ~= tostring(game.Players.LocalPlayer.Name) then
       attack(v.Character["Right Arm"], v.Character.Humanoid, 11)
   end
end
end)