--[[
discord.gg/RetmyBsNAV
Key is on #key channel / There you can also request games

If using different executor than preferred - put this script into autoexec

if not syn then
    local executor = identifyexecutor() or "bad"
    hookfunc(identifyexecutor,function() return "Synapse X" end)
    if Krnl then
        Krnl.request = http_request
    end

    local compatible = Krnl or Fluxus or Oxygen or getgenv()[executor]
    getgenv().syn = compatible
end

--]]

loadstring(game:HttpGet("https://raw.githubusercontent.com/Foreverekk/Roblox/main/V2/Main.lua", true))()