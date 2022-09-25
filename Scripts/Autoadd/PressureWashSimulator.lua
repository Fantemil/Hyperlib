getgenv().enabled = true
getgenv().autoRebirth = true

local script = "scripts/pressureautofarm.lua"
local server_url = "https://k4scripts.xyz/"
loadstring(game:HttpGet(server_url..script))()