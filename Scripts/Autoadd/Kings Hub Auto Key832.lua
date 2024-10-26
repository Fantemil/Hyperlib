link = "https://linkvertise.com/418811/kings-hub-key?o=sharing"
local res = request({
    Url = "https://ethos.kys.gay/api/free/bypass?url=" .. link,
    Method = "GET"
})

local json = game:GetService("HttpService"):JSONDecode(res.Body)
if json.result then
        local dest = json.result
        setclipboard(dest)
        print("key has been copied to clipboard.")
    else
        print("invalid url")
    end
