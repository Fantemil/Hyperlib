getgenv().script = function()
loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ImMejor35/Flood-GUI/main/Flood%20GUI%20v3"))()
end
local secure=loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ImMejor35/bad-ui-lib-ngl/main/securescript"))()
secure.runscript("getgenv().script()")