 while wait() do
   pcall(function()
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Team ~= game.Players.LocalPlayer.Team and v.Character and game.Players.LocalPlayer.Character.HandInvItem.Value ~= nil and game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) < 60 then
               game.ReplicatedStorage:WaitForChild("rbxts_include")["node_modules"]["net"]["out"]["_NetManaged"].SwordHit:InvokeServer({
                   entityInstance = v.Character,
                   weapon = game.Players.LocalPlayer.Character.HandInvItem.Value
               })
           end
       end
   end)
end