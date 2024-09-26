-- a different format to execute loadstrings
local scriptURL = 'enter raw github/pastebin url link here'
local response = game:HttpGet(scriptURL)
local executeScript = loadstring(response)
executeScript()