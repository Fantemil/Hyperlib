-- detecting solara
local players = game:GetService("Players")
local name, version = identifyexecutor()
if name ~= "Solara" then
    players.LocalPlayer:Kick("Unsupported Exploit")
end