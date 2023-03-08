local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == 'FireServer' and self.Name == 'SubmittedAnswer' then
   args[1] = game.ReplicatedStorage.HintAnswer.Value

 end
 return old(self, unpack(args))
end)