for i,v in pairs(game.Players.LocalPlayer.leaderstats:GetChildren()) do
if v.ClassName == 'NumberValue' and v.Name == 'CashMoney' then
local Cash = v
Cash.Value = 9e99
end
end
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(self, ...)
local args = {...}
local method = getnamecallmethod()
if tostring(method) == 'FireServer' and tostring(self.Name) == 'SubCash' then
return nil
end
return old(self, ...)
end)
setreadonly(mt, true)