-- test output: https://pastebin.com/raw/gCcmsXSv
-- example usage:
local module = require(game:GetService("ReplicatedStorage").Modules.Titles) -- module script path
loadstring(game:HttpGet("https://raw.githubusercontent.com/SkireScripts/Ouxie/main/Utils/Module%20Fetcher.lua"))():convert({
    action = "copy"; -- {copy,log} (log=print)
    JSON = game:GetService("HttpService"):JSONEncode(module) -- json code (any json code)
})