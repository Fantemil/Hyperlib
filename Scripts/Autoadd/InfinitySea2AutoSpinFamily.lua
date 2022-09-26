local Wanted = {"Monkey"}

repeat
   if not table.find(Wanted,game.Players.LocalPlayer.Data.Family.Value) then
       game:GetService("ReplicatedStorage")._Turn:FireServer("Roll", "Family")
   end
   task.wait(0.1)
until table.find(Wanted,game.Players.LocalPlayer.Data.Family.Value)