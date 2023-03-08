local request = http and http.request or fluxus and fuxus.request or syn and syn.request or request or http_request
local oldf
oldf = hookfunction(request, function(...)
    local args = {...}
    if args[1].Url:find("rpc") then
        return
    end
    return oldf(...)
end)