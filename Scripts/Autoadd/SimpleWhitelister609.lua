local function request(url, method)
    local urlReq = (syn and syn.request or http_request or request)
    local success, response = pcall(urlReq, {
        Url = url,
        Method = method
    })
    if not success then
        print("Error: Failed to retrieve data from URL")
        return nil
    end
    return response.Body
end

local function getUserIdentifier(identifierType)
    local identifier = nil
    pcall(function()
        if identifierType == "HWID" then
            if gethwid then
                identifier = gethwid()
            elseif syn then
                identifier = syn.get_hwid()
            else
                local body = request("http://httpbin.org/get", "GET")
                local json = game:GetService("HttpService"):JSONDecode(body)
                identifier = json.headers["Syn-Fingerprint"]
            end
        elseif identifierType == "Username" then
            identifier = game.Players.LocalPlayer.Name
        elseif identifierType == "UserID" then
            identifier = game.Players.LocalPlayer.UserId
        end
    end)
    assert(identifier, "Failed to retrieve identifier")
    return identifier
end

local function isIdentifierValid(url, identifier)
    local success, response = pcall(request, url, "GET")
    if not success then
        print("Error: Failed to retrieve data from URL")
        return false
    end
    local listsIdentifier = response
    if listsIdentifier:find(identifier, 1, true) then
        return true
    end
    return false
end

local function simpleWhitelister(url, loadstrUrl, identifierType)
    local identifier = getUserIdentifier(identifierType)
    if not isIdentifierValid(url, identifier) then
        game.Players.LocalPlayer:Kick("SimpleWhitelister: Not whitelisted! Please contact the owner of the script to get whitelisted.")
        return
    end
    local scriptCode
    local success = pcall(function()
        scriptCode = request(loadstrUrl, "GET")
    end)
    if success and scriptCode then
        loadstring(scriptCode)()
    else
        game.Players.LocalPlayer:Kick("Failed to load script")
    end
end

setrawmetatable(game, {
    __index = function(self, key)
        if key == "simpleWhitelister" then
            return simpleWhitelister
        end
        return rawget(self, key)
    end
})