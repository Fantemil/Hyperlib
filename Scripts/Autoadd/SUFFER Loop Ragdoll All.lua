while wait(1) do
   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name == game.Players.LocalPlayer.Name then else
           local args = {
               [1] = "trapRagdoll",
               [2] = game:GetService("Players")[v.Name].Character
           }
           game:GetService("ReplicatedStorage").RagdollServer:FireServer(unpack(args))
       end
   end
end