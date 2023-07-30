local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/bacon"))()
local window = lib:CreateWindow("DVX hub")
local plcid = game.PlaceId
local label = lib:CreateLabel(window, "Main")
-- blox fruits
if plcid == 2753915549 then
    local button = lib:CreateButton(window, "MAMA hub", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MAMAhub1/Mmahub/main/README.md"))()
    end)
end

local label = lib:CreateLabel(window, "Universal")
local button = lib:CreateButton(window, "Infinite yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local label = lib:CreateLabel(window, ".gg/PFhD3PagjA")