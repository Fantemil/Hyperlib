lp = game.Players.LocalPlayer
lc = lp.Character


for _,c in pairs(game.Players:GetChildren()) do
   if c.Character and c~= lp then
       h = {
           [1] = {
               ["Function"] = "Hurt",
               ["Victim"] = c.Character.Humanoid,
               ["HeadShot"] = false,
               ["CurrentDamage"] = math.huge,
               ["Client"] = lp,
               ["IsDead"] = false,
               ["ToolName"] = "f"
           }
       }

       game.ReplicatedStorage.ClientConnection:FireServer(unpack(h))
   end
end