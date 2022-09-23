local text = "jack/GAY/AWESOME POUNDERS"

for i,v in pairs(game.Players:GetPlayers()) do
   if v.Character then
   for i2,v2 in pairs(v.Character:GetDescendants()) do
       if v2:IsA("RemoteEvent") and v2.Name == "ServerHandler" then
             v2:FireServer(text)
       end
   end
end
end