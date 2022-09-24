while task.wait() do
pcall(function()
       for i,v in pairs(game.Players:GetPlayers()) do
           if v.Name ~= game.Players.LocalPlayer.Name then

               local args = {
                   [1] = game:GetService("Players")[v.Name].Character.UpperTorso,
                   [2] = Vector3.new(23.59449005127, 5.6640138626099, 11.125957489014),
                   [3] = Vector3.new(0.97992962598801, -0.10808664560318, 0.16749718785286),
                   [4] = nil --[[Color3]]
               }

               game:GetService("ReplicatedStorage").Events.lightningHit:FireServer(unpack(args))
           end
       end
   end)
end