while wait(5) do
   coroutine.resume(coroutine.create(function()
       for count = 1, 40 do
           for i,v in pairs(game.Players:GetChildren()) do
               if v:IsA("Player") and v ~= game.Players.LocalPlayer then
                   game:GetService("ReplicatedStorage").SpecialMoves.Donut:FireServer(v.Character,math.huge)
               end
           end
       end
   end))
end