--//Settings

--[[
--//Regions:
"Outerwall"
"Yaramo"
"Vertigo"
"Midnight"
"Junction"
"Shallows"

--//Difficulty:
0 - Very easy
400 - Very hard (Recommended)

--//Info
Can only go if unlocked that region
Script requires melee weapon equipped
Junction is buggy and i might fix but cba rn
Execute in lobby and wait 10 seconds
]]

local Settings = {
   Region = "Outerwall",
   Difficulty = 400,
   Special = true
}

--//Services
local HttpService = game:GetService("HttpService");

function saveSettings()
   local savedTable = HttpService:JSONEncode(Settings);

   writefile("NK_Settings.json", savedTable);
   Settings = HttpService:JSONDecode(readfile("NK_Settings.json"));
end

saveSettings();

loadstring(game:HttpGet("https://pastebin.com/raw/FNw0Q7Dm"))();