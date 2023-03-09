local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall =
   newcclosure(
   function(remote, ...)
       args = {...}
       method = tostring(getnamecallmethod())
       if method == "FireServer" and tostring(remote) == "ServerEvent" and args[1] == "Accuracy" then
           args[2] = 1
           return old(remote, unpack(args))
       end
       return old(remote, ...)
   end
)
setreadonly(mt, true)