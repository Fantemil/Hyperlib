game:GetService("ScriptContext"):SetTimeout(0)
local got = false
old = hookmetamethod(game, "__namecall", function(self, ...)
if getnamecallmethod() == "Kick" or getnamecallmethod() == "FireServer" then
    if not got then
        self:Destroy()
        got = true
    end
    return wait(9e9)
end
return old(self, ...)
end))