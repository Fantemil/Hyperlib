local UILibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZexusBerry/UiLib/main/UiLib%20Source.lua"))()

local password = "your Password"
local link = "Your Link"

local scriptToExecute = [[
-- Your Scipt --
]]

local loginMenu = UILibrary:CreateLoginMenu(password, link, scriptToExecute)