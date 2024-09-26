-- Print your ping without decimals
local Ping = string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1]
local getridofgoofydecimals = string.format("%.0f", Ping)
print(getridofgoofydecimals)