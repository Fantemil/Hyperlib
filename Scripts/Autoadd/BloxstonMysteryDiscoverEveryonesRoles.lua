for i,v in pairs(game.Players:GetPlayers()) do
 if v.Character then 
  local charac = v.Character
print ("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
print (v.PlayerData.DisplayName.value)
print (v.PlayerData.Role.value)
print (v.PlayerData.Number.value)
print ("vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv")
 end
end