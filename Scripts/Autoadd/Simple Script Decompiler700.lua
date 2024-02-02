local Decompile = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/Decompile/main/Mobile.lua"))()

Decompile.getconstants = false
Decompile.getupvalues = false
Decompile.new(Decompile)

-- Example
--[[
local Decompile = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/Decompile/main/Mobile.lua"))()

Decompile.getconstants = false
Decompile.getupvalues = false

-- Table
Decompile.new(Decompile)

-- Instance
Decompile.new(workspace.LocalScript)
Decompile.new(workspace.ModuleScript)
]]