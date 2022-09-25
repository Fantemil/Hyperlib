local request = (syn and syn.request) or (http and http.request) or http_request
 
if request then 
    request({
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["Origin"] = "https://discord.com"
       },
       Body = game:GetService("HttpService"):JSONEncode({
           cmd = "INVITE_BROWSER",
           args = {code = "SrhXcg4B27"},
           nonce = game:GetService("HttpService"):GenerateGUID(false)
       }),
    })
  
end