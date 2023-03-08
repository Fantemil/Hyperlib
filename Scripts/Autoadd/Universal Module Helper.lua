local ModHelper = loadstring(game:HttpGet("https://www.soggy-ware.cf/Libs/ModuleHelper.lua"))()

-- Get's the module script which has the name of GUITransparency, and aslong as the Validator function returns true.
local GUITransparency = (ModHelper:GetModule("GUITransparency", {
 Validator = function(x)
    return (x.Parent == game:GetService("ReplicatedStorage") and true or false)
 end
}))
print(GUITransparency)

-- This grabs a function from the garbage collector called "Revert" and if it comes from a module script instance, above, and it will return true, because it comes from that module script
local RevertFunc = (ModHelper:GetFunction("Revert", {
 Validator = function(f)
  if getfenv(f).script == GUITransparency then return true else return false end
 end
}))
print(RevertFunc)

-- Get's a table from garbage collector which contains "hi", can have multiple things, not just "hi"
local Cache = ModHelper:GetTable({"hi"})
print(Cache)