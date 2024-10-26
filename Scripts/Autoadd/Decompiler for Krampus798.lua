-- wow wow wow

local httpService = cloneref(game:GetService('HttpService'))

local function decompile(scr)
    local s, bytecode = pcall(getscriptbytecode, scr)
    if not s then
        return `failed to get bytecode { bytecode }`
    end

    local response = request({
        Url = 'https://unluau.lonegladiator.dev/unluau/decompile',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json',
        },
        Body = httpService:JSONEncode({
            version = 5,
            bytecode = crypt.base64.encode(bytecode)
        })
    })

    local decoded = httpService:JSONDecode(response.Body)
    if decoded.status ~= 'ok' then
        return `decompilation failed: { decoded.status }`
    end

    return decoded.output
end

getgenv().decompile = decompile