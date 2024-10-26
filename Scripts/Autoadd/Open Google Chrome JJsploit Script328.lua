--[[ 
    WARNING: Heads up! This script is only for testing purposes on exploits like jjsploit, make sure to join the discord to share any other script you may like to share
https://discord.gg/RStJAwe67c

]]
local LinkingService = game:GetService("LinkingService")
local ScriptContext = game:GetService("ScriptContext")

-- Function to open Google Chrome
local function openGoogleChrome()
    local chromeProxyPath = [[C:\Program Files\Google\Chrome\Application\chrome_proxy.exe]] -- Path to chrome_proxy.exe

    -- Attempt to open the Chrome Proxy executable
    local success = LinkingService:OpenUrl(chromeProxyPath)

    if not success then
        warn("Failed to open Google Chrome.")
    end
end

-- Call the function to open Google Chrome
openGoogleChrome()
