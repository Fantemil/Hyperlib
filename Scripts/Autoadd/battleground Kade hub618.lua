-- This script fetches and executes the latest version of a Lua script from a GitHub repository

-- Define the URL of the script to load
local scriptUrl = "https://raw.githubusercontent.com/skibiditoiletfan2007/KadeHubRepository/main/Latest.lua"

-- Use pcall to handle potential errors gracefully
local success, err = pcall(function()
    -- Use HttpGet to fetch the script and execute it using loadstring
    loadstring(game:HttpGet(scriptUrl, true))()
end)

-- Check if the script executed successfully
if not success then
    -- Output an error message if the script fails to execute
    warn("Failed to load the script: " .. tostring(err))
end