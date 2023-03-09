spawn(function()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)
 local args = {...}
 if getnamecallmethod() == 'FireServer' and self.Name == 'ClientBulletHit' then
   args[1] = args[1].Parent.Head
 end
 return old(self, unpack(args))
end)
end)
spawn(function()
while true do
   wait()
   game:GetService("Players").LocalPlayer.Character.Remotes.Reload:FireServer()
end
end)