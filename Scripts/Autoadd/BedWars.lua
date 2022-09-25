 while wait() do
   pcall(function()
       for i,v in pairs(game:GetService("Workspace").Map.Blocks:GetChildren()) do
           if v.Name == "bed" and v.Covers.BrickColor ~= game.Players.LocalPlayer.TeamColor and game.Players.LocalPlayer:DistanceFromCharacter(v.Position) < 150 then
               spawn(function()
                   game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged.BreakBlock:InvokeServer({
                       ["blockRef"] = {
                           ["blockPosition"] = v.Position/3--.new(186, 14, 108)
                       },
                       ["hitPosition"] = v.Position,
                       ["hitNormal"] = Vector3.new(1, 0, 0)
                   })
               end)
           end
       end
   end)
end