local bad = {};

bad[1] = ".link/"
bad[2] = ".pics/"
bad[3] = ".club/"
bad[4] = ".lol/"
bad[5] = ".shop/"
bad[6] = ".bar/"
bad[7] = ".quest/"
bad[8] = ".guru/"
bad[9] = ".life/"
bad[9] = ".monster/"
bad[10] = ".best/"
bad[11] = ".me/"
bad[12] = "thing.com/"
bad[13] = ".fun/"
bad[14] = ".site/"
bad[15] = ".space/"
bad[16] = ".co/"
bad[17] = ".ly/"
bad[19] = ".xyz/"
bad[20] = ".ga/"
bad[21] = ".tk/"
bad[22] = ".gq/"
bad[23] = ".io/"
getgenv().script = function()
    local g
    g = hookfunction(game.HttpGetAsync,function(self,url,...)
        for i,v in pairs(bad) do
            if string.find(url,v) ~= nil then
                print("Link = " .. url)
                print("Detected url ending with " .. v)
                error("Blocked Suspicious Http Request")
            elseif string.find(url,"https") == nil then
                error("Unsecure Http Request")
            end
        end
        return g(self,url,...)
    end)
end
local secure=loadstring(game:HttpGet("https://raw.githubusercontent.com/ImMejor35/bad-ui-lib-ngl/main/securescript"))()
secure.runscript("getgenv().script()")