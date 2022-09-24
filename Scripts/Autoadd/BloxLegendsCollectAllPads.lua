getgenv().squares = true;

spawn(function()
   local plr = game.Players.LocalPlayer.Character.Head
   while wait() do
       if not getgenv().squares then break end
       for i,v in pairs(game:GetService("Workspace").Bases.Position5.folder:GetDescendants()) do
           if v.Name == "TouchInterest" and v.Parent then
               firetouchinterest(plr, v.Parent, 0)
           end
       end
   end
end)