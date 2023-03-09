local credit='guardscripts'
local url=('https://raw.githubusercontent.com/%s/myscripts/main/scriptinit.lua'):format(credit)
init=loadstring(game:HttpGet(url,true))
getgenv().xscriptId='XzU4ODc='
init()