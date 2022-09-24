local kickmenu
local modmenuguihandler
for _,v in next, getgc(true) do
if typeof(v) == "table" then
if rawget(v, "CreateAlert") then

local func = rawget(v, "CreateAlert")
print("Found CreateAlert Function!")
kickmenu = getfenv(func).script
elseif rawget(v, "UpdateRanks") then
print("Found UpdateRanks Function!")
modmenuguihandler = v
end
end
end

local RankModule = require(game:GetService("ReplicatedStorage").RankModule)

local Hook = hookfunction(RankModule.GetGroupRank, function(...)
local args = {...}
print("RankModule:GetGroupRank("..args[2]..") called")
return RankModule.Ranks.Admin
end)

local KickMenuEnvironment = kickmenu

print(KickMenuEnvironment:CanPunishUser("XBOXletourneau6"))