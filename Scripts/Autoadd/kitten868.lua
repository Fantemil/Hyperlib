--this is a loader
local scriptUrl = "https://raw.githubusercontent.com/EnableDev1/kitten/main/fdsasd9ujiofsdiufu9834u89fu389-obfuscated.lua"

local function loadAndExecuteScript(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        local loadedFunction, loadError = loadstring(response)
        if loadedFunction then
            local executionSuccess, executionError = pcall(loadedFunction)
            if not executionSuccess then
                warn("Error executing the loader dm o9am. " .. executionError)
            end
        else
            warn("" .. loadError)
        end
    else
        warn("" .. response)
    end
end

loadAndExecuteScript(scriptUrl)
