local mt = getrawmetatable(game)
make_writeable(mt)
local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
local method = getnamecallmethod()
local args = {...}
if method == "FireServer" and tostring(self) == "ChangeLimit" then
return
end
return namecall(self, table.unpack(args))
end)
for i=1,2000 do
wait(0.01)
local ohNumber1 = math.huge
local ohNumber2 = i
print(i)
game:GetService("ReplicatedStorage").ServerStats.ChangeMoney:FireServer(ohNumber1, ohNumber2)
end