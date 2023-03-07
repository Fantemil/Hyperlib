_G.Range = 30
_G.Uses = 1
_G.OnClick = true
local oldhmmnc
oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
    if self == game.Players.LocalPlayer and getnamecallmethod():lower() == "kick" then
        return
    end
    return oldhmmnc(self, ...)
end)
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
local WaterMark = game:GetService("CoreGui").RobloxGui:FindFirstChildOfClass("ScreenGui")
if not WaterMark then else
    WaterMark:Destroy()
end