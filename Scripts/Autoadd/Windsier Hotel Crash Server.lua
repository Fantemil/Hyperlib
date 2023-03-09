teamRemote = game.ReplicatedStorage.Shared.SharedEvents.TeamChange

for _ = 1, 99999 do
   switchArgs = {
       [1] = game.Teams:FindFirstChild('Hotel Guest')
   }

   teamRemote:FireServer(unpack(switchArgs))
end