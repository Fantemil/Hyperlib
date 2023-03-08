local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)
mt.__namecall = newcclosure(function(self, ...)[nonamecall]
 
local args = {...}
local method = getnamecallmethod()
 
    if method == "FireServer" and self.Name == "Travel" then
        return wait(9e9)
    end
    return old(self, ...)
end)
 
 print("Hooked")
 