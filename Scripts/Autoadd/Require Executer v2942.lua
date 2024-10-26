--[[
FUSED LUA SCRIPT BY ROZXINO
]]

local throw_away = {}

local SCRIPT_TO_OBFUSCATE = [[
print(" FUSED SCRIPT ")
]]

function GetBytes()
	for num = 1, #SCRIPT_TO_OBFUSCATE do
		throw_away[num] = string.byte(SCRIPT_TO_OBFUSCATE, num)
	end
end

function ConvertString()
	local string_buffer = "";
	for obj = 1, #throw_away do
		string_buffer = string_buffer .. "\\" .. throw_away[obj]
	end
	return string_buffer
end

function Obfuscate()
	GetBytes()
	local str = ConvertString()
	return print('loadstring("' .. str .. '")()')
end

Obfuscate()