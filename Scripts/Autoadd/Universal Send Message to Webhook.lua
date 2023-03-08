local webh = "Your_WebHook_Here"

    local body = http_request({Url = "https://httpbin.org/get"; Method = "GET"}).Body;
    local decoded = game:GetService("HttpService"):JSONDecode(body)
        local HttpServ = game:GetService("HttpService")
        local url = webh
        local data = 
            {
                ["content"] = "",
                ["embeds"] = {{
                    ['username'] = "Vdms"
                    ["title"] = "Text_Know_What_Your_Doing",
                }}
            }
        local newdata = HttpServ:JSONEncode(data)
        local headers = {
            ["content-type"] = "application/json"
        }
        local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
        http_request(request_payload)