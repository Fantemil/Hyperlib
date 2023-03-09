game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack.Sniper)

for i,v in next, game.Players:GetPlayers() do
   game:GetService("ReplicatedStorage").WeaponsSystem.Network.WeaponHit:FireServer(game.Players.LocalPlayer.Character.Sniper,{
       ["p"] = v.Character.Head.Position,
       ["pid"] = 1,
       ["part"] = v.Character.Head,
       ["d"] = 225.4964141845703,
       ["maxDist"] = 220.48348999023438,
       ["h"] = v.Character.Humanoid,
       ["m"] = Enum.Material.Plastic,
       ["n"] = Vector3.new(-0.9637810587882996, -0.046888358891010284, -0.2625408172607422),
       ["t"] = 0.15185665205004445,
       ["sid"] = 32,
   })
end