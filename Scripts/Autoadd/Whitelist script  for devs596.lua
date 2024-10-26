local whitelistURL = "https://pastebin.com/JUs8QAFx" -- URL of the Pastebin containing whitelisted HWIDs


local whitelist = {}
local success, response = pcall(function()
    return game:HttpGet(whitelistURL)
end)

if success then
    for hwid in response:gmatch("[^\r\n]+") do
        table.insert(whitelist, hwid)
    end
else
    error("Failed to fetch whitelist from Pastebin.")
end


local function getHWID()
    -- This is just a placeholder. You need to replace this with the actual HWID fetching method.
    return game:GetService("RbxAnalyticsService"):GetClientId()
end

local hwid = getHWID()

-- Check if HWID is whitelisted
local isWhitelisted = false
for _, id in ipairs(whitelist) do
    if hwid == id then
        isWhitelisted = true
        break
    end
end

if isWhitelisted then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gugnon/hahahah/main/main"))() 
else
    game.Players.LocalPlayer:Kick("HWID isn't in our database.")
end