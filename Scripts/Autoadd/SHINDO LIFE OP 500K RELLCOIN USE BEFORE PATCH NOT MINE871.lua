local charset = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890"
math.randomseed(os.clock())
function randomString(length)
local ret = {}
local r
for i = 1, length do
r = math.random(1, #charset)
table.insert(ret, charset:sub(r, r))
end
return table.concat(ret)
end


local randomString = randomString(5) -- Keep it short
local money = 500000 -- It is rellcoins, the max money you can have is 500k

game:GetService("Players").LocalPlayer.startevent:FireServer("rellcoinshop",
  {ClassName = "Folder",Name = randomString, ryoshop =
      {Name = "ryoshop", ClassName = "IntValue", Value = -money}
  })