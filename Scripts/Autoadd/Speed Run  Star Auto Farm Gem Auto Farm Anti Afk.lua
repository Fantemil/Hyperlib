local json = game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/lkhub/main/list.json")

function toJson(string)
    local jsonData = nil
    local s, err = pcall(function() 
        local jsonTry = game:GetService("HttpService"):JSONDecode(string)  
        jsonData = jsonTry
    end)   
    return jsonData or false
end

json = toJson(json)
local url = json[tostring(game.PlaceId)] or "universal.lua"
url = url.s or url
loadstring(game:HttpGet("https://lkhub.net/s/"..url))()