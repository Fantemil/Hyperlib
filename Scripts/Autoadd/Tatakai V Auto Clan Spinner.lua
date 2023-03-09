local WHITELISTED = {"HaÃ±ma", "Songoku", "Kagutsuchi", "Sung", "Raijin", "Gyakusatsu", "SenkÅ", "Sanji", "Ryu", "Fujin"}

while wait(0.125) do
   if table.find(WHITELISTED, tostring(game.Players.LocalPlayer.PlayerGui.MainGui.StatusFrame["Name/Clan"].Text):split(" ")[2]) == nil then
       game.ReplicatedStorage.Reroll:FireServer("BP")
   else
       break
   end
end