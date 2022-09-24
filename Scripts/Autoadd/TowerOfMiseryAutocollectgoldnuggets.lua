while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace:GetDescendants()) do
   if string.find(v.Name, "Gold_Piece") or string.find(v.Name, "Register") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
   end
   end
   end)
   end