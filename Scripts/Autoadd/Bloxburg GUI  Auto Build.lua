local http_request = http_request or request or (syn and syn.request) or (http and http.request) loadstring(http_request({Url="https://projectillusion.dev/beta/illusion/illusion_bloxburg.lua",Method="GET"}).Body)()