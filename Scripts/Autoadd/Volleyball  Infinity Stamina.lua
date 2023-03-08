local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()
local player = game.Players.LocalPlayer.Name
local scriptPath = workspace[player].CharacterScript
local closureName = "handleStaminaRegen"
local upvalueIndex = 2
local closureConstants = {
 [1] = "Velocity",
 [2] = "Magnitude",
 [3] = 16.5,
 [4] = "Stamina",
 [5] = "tick",
 [7] = 1.5
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = math.huge
local elementIndex = "Stamina"



debug.getupvalue(closure, upvalueIndex)[elementIndex] = value