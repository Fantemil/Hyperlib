loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/adoniscries/main/Source.lua"))() -- Adonis bypass

local badFunctions = {"Crash", "HardCrash", "GPUCrash", "RAMCrash", "KillClient", "SetFPS"} -- Functions to hook

for i,v in pairs(getgc()) do 
    if type(v) == "function" then
        local info = debug.getinfo(v)
        local functionName = info.name
        
        -- Hook crash/lag functions
        if info.source:find('=.Core.Functions') and table.find(badFunctions, functionName) then
            print("Hooked \"" .. functionName .. "\"")
            hookfunction(v, function()
                print("Stopped \"" .. functionName .. "\" from running")
            end)
        end
    end
end