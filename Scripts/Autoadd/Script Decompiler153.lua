local decompsrc = game:HttpGet("https://raw.githubusercontent.com/playvoras/Fork-Advanced-Decompiler-V3/main/init.lua", true)
local function loaddecomp(decomptimeout)
	local CONSTANTS = [[
local ENABLED_REMARKS = {
    NATIVE_REMARK = true,
    INLINE_REMARK = true
}
local DECOMPILER_TIMEOUT = ]] .. decomptimeout .. [[
    
local READER_FLOAT_PRECISION = 99 -- up to 99
local SHOW_INSTRUCTION_LINES = false
local SHOW_REFERENCES = false
local SHOW_OPERATION_NAMES = false
local SHOW_MISC_OPERATIONS = false
local LIST_USED_GLOBALS = false
local RETURN_ELAPSED_TIME = false
]]

	loadstring(string.gsub(decompsrc, ";;CONSTANTS HERE;;", CONSTANTS), "Advanced-Decompiler-V3")()
end
getgenv().loaddecomp = loaddecomp
loaddecomp(190000000000)

loadstring(game:HttpGet('https://raw.githubusercontent.com/infyiff/backup/main/dex.lua'))()