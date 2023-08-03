local u = "https://raw.githubusercontent.com/ImMejor35/cracked/main/Galaxy%20Scripting%20Center/"
local placeid = tostring(game.PlaceId)..'.lua'
if pcall(function()game:HttpGet(u..placeid)end) then
    loadstring(game:HttpGet(u..placeid)){}
else
    loadstring(game:HttpGet(u..'Galaxy%20Scripts%20Regular.lua')){}
end