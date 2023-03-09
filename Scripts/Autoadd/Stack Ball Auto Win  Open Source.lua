while wait(1.6) do
   for i, v in pairs(game.Workspace.Game.Model:GetDescendants()) do
       if string.find(v.Name, "Safe") or string.find(v.Name, "Kill") then
           v:Destroy()
       end
   end
end