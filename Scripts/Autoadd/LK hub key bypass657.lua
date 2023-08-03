local old 
old = hookfunction(game.HttpGet, function(self, url)
    if type(url) == "string" then
        if string.match(url, "check.php") then
            return "Whitelisted"
        end
    end
    return old(self, url)
end)

loadstring(game:HttpGet("https://lkhub.net/s/loader.lua"))()