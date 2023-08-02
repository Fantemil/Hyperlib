local old_meta = getrawmetatable(game)
local new_meta = old_meta.__namecall
setreadonly(old_meta, false)

old_meta.__namecall = function(a, ...)
   local arguments = {...}
   
   if getnamecallmethod() == "FireServer" and string.find(tostring(string.lower(a.Name)), "afk") then
       arguments[1] = false
   end
   
   return new_meta(a, unpack(arguments))
end