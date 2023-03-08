request = http_request or request or HttpPost or syn.request
_G.ID = math.random(1, 100)

function toJson(string)
    local jsonData = nil
    local s, err = pcall(function() 
        local jsonTry = game:GetService("HttpService"):JSONDecode(string)  
        jsonData = jsonTry
    end)   
    return jsonData or false
end

local old
local QID = _G.ID

old = hookfunction(request, newcclosure(function(req)
    if QID ~= _G.ID then return old(req) end
    if (string.find(req.Url:lower(), "discord")) then
        local json = toJson(req.Body)
        if json == false then return old(req) end
        if json.content or json.embeds then
            return warn("Blocked webhook \n URL: "..req.Url, "\n BODY:\n", req.Body)
        end
    end
   return old(req)
end)) 