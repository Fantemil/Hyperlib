if game.ReplicatedStorage:FindFirstChild("CarbonResource") then
  for _,player in pairs(game.Players:GetPlayers()) do
      if player ~= game.Players.LocalPlayer then
           game.ReplicatedStorage.CarbonResource.Events:GetChildren()[4]:FireServer(player.Character.Humanoid, 100, "Head", {'nil', 'Auth', 'nil', 'nil'})
      end
  end
else
  print("Game doesn't have Carbon!")
end