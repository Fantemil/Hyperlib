loadstring(game:HttpGet("https://raw.githubusercontent.com/GodXNation/warshipfuckrs/main/warshipfucker", true))()

spawn(function()
while wait(2) do

local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/GodXNation/upvalu/main/uval"))()

local scriptPath = game:GetService("Players").LocalPlayer.PlayerScripts.Aero.Modules.EquipmentGUI.GunController
local closureName = "Unnamed function"
local upvalueIndex = 1
local closureConstants = {
 [1] = "InputBegan"
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = 100000000000
local elementIndex = "MagazineRemaining"


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.getupvalue(closure, upvalueIndex)[elementIndex] = value



local scriptPath = game:GetService("Players").LocalPlayer.PlayerScripts.Aero.Modules.EquipmentGUI.GunController
local closureName = "Unnamed function"
local upvalueIndex = 1
local closureConstants = {
 [1] = "InputBegan"
}

local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)
local value = 100000000
local elementIndex = "MagazineRemaining"


-- DO NOT RELY ON THIS FEATURE TO PRODUCE 100% FUNCTIONAL SCRIPTS
debug.getupvalue(closure, upvalueIndex)[elementIndex] = value
end
end)