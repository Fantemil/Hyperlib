local s = require(game.ReplicatedStorage.ClientStatCache)
for i,v in pairs(s:Get()["Flags"])do
   v:Set(v,nil)
   v:Set({"Eggs","CheaterFlag"},nil)
end