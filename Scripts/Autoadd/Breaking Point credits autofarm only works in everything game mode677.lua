while wait() do
   game:GetService("ReplicatedStorage").RemoteEvent:FireServer(16, "public")
   wait()
   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Name == game.Players.LocalPlayer.Name then
           else
           game:GetService("ReplicatedStorage").RemoteEvent:FireServer(30, v)
       end
   end
end