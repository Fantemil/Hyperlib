local HttpService = game:GetService("HttpService")
        local requestFunction = (syn and syn.request) or (http and http.request) or http_request
        
        if requestFunction then
            local nonce = HttpService:GenerateGUID(false)
            local requestBody = HttpService:JSONEncode({
                cmd = 'INVITE_BROWSER',
                nonce = nonce,
                args = {code = "hTatCf7uvN"}
            })
            
            requestFunction({
                Url = 'http://127.0.0.1:6463/rpc?v=1',
                Method = 'POST',
                Headers = {
                    ['Content-Type'] = 'application/json',
                    Origin = 'https://discord.com'
                },
                Body = requestBody
            })
        else
            warn("Unable to make HTTP request: requestFunction is not available")
        end                