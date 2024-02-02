local Old
Old = hookfunction(request, newcclosure(function(a, b)
    if type(a) == "table" then
        for i, v in pairs(a) do
            if i == "Url" and v == 'https://btteam.net/checkpoint/check.php' then
                return {
                    StatusCode = 200,
                    Body = 'lol'
                }
            elseif i == "Url" and v == 'https://btteam.net/checkpoint/verify.php?h=lol&k=Cracked' then
                return {
                    StatusCode = 200,
                    Body = '{"status":"success","message":"VALID_KEY"}'
                }
            end
        end
    end
    return Old(a, b)
end))
loadstring(game:HttpGet('https://btteam.net/scripts-auth/', true))()

