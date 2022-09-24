local DataService = require(game:GetService("ReplicatedStorage").Modules.DataService)
local hashtable = getupvalue(getupvalue(DataService.InvokeServer, 4),3)
local remotes = {}
for i,v in pairs(getreg()) do
    if type(v) == "function" and getinfo(v).name == "remoteAdded" then 
        remotefunc = v 
    end
end
for i,v in pairs(getupvalue(getupvalue(remotefunc,2),1)) do
    remotes[v:gsub("F_", "")] = hashtable[i] --some remotes start with F_ cuz gay
end
warn(remotes["SellObject"]) --just one of the many remotes in this game