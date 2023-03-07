local s = require(game.ReplicatedStorage.ClientStatCache):Get()
--remove all tags attached to you
for i,v in pairs(s.ServerSide.Flags)do
   v:Set(v,nil)
   break
end

--remove all tags attached to you
for i,v in pairs(s.ServerSide.Flags.AntiCheat)do
   v:Set(v,nil)
   break
end

--in case you want to search by yourself something , here is the code to dump the info server sidded
--[[
   for i,v in pairs(s.ServerSide)do
       print(i,v)
   end
--]]