IGNORE_ME = true

local r = game.ReplicatedStorage.Remotes.To_Server.Handle_Initiate_S
for i,v in next, game.Players:GetPlayers() do
   if not IGNORE_ME or v ~= plr then
       local p = v:FindFirstChild("currentparty")
       
       if p then
           r:FireServer("Join_Party", v, p.Value);
       end
   end
end