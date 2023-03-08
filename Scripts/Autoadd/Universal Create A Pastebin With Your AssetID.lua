local request = request or http_request or (http and http.request) or
                    (syn and syn.request)


-- U NEED TO HAVE A PASTEBIN ACCOUNT

local id = "4001118261"
local api_key = "" -- To get your api key just go to "https://pastebin.com/doc_api", below a title named "Your Unique Developer API Key" you'll find ur key
local mainCode = game:GetObjects("rbxassetid://"..id)[1].Source

local res = request({
    Method = "POST",
    Url = "https://pastebin.com/api/api_post.php",
    Headers = {["User-Agent"] = "Eclipse"},
    Body = "api_dev_key="..api_key.."&api_option=paste&api_paste_code=" .. tostring(mainCode)
}).Body

print(res)
setclipboard(res)