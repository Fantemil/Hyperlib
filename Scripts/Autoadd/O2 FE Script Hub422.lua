--[[

GetJobId
exit
utg
wallwalk
gamegui
ball
choosemap
alltools
ShowGlass
pladmin
admin
fecheck
iy
reach
flinggui

]]--
function loadScript(v,send)
getgenv().f = v
getgenv().m = send
loadstring(game:HttpGet("https://raw.githubusercontent.com/Deez-Nuts445/O2-FE-Script-hub/main/src"))()
end

loadScript("iy",true)