--// init
local Settings = {
	return_values = true,
	max_table_size = 3,
	IncludeFunctionEnv = false,
	decode_bytes = true, -- converts stuff like \110 to 'n'
	table_display = 'maximized' --[[
  maximized:
   {
    [1] = 1,
	[2] = 2,
	[3] = 3,
	...
   }
  minimized:
  {  [1] = 1, [2] = 2, [3] = 3, ...  }
 ]]
}

type userdata = {}
type _function = (...any) -> (...any)

function GetFullName(instance)
	local p = instance
	local lo = {}
	while (p ~= game and p.Parent ~= nil) do
		table.insert(lo, p)
		p = p.Parent
	end
	local fullName
	if #lo == 0 then
		return "nil --[[ PARENTED TO NIL OR DESTROYED ]]"
	end
	if lo[#lo].ClassName ~= "Workspace" then
		fullName = 'game:GetService("' .. lo[#lo].ClassName .. '")'
	else
		fullName = "workspace"
	end
	for i = #lo - 1, 1, -1 do
		fullName = fullName .. ':FindFirstChild("' .. lo[i].Name .. '")'
	end
	return fullName
end

local function rawlength(t)
	local count = 0
	for _, _ in next, t do count += 1 end
	return count
end
local function move(t1, fromt1, tot1, copyintot2, t2)
	local result = {}
	local count = 0

	for k, v in pairs(t1) do
		count = count + 1
		if count > tot1 then
			break
		end
		if count >= fromt1 then
			result[k] = v
		end
	end

	local insertionIndex = copyintot2
	for k, v in pairs(result) do
		t2[k] = v
	end
	return t2
end

local Metatable = {
	--[[
		A list of metamethod emulators used to call individual
		metamethods efficiently.
	]]
	metamethods = {
		__index = function(self, key)
			return self[key]
		end,
		__newindex = function(self, key, value)
			self[key] = value
		end,
		__call = function(self, ...)
			return self(...)
		end,
		__concat = function(self, b)
			return self..b
		end,
		__add = function(self, b)
			return self + b
		end,
		__sub = function(self, b)
			return self - b
		end,
		__mul = function(self, b)
			return self * b
		end,
		__div = function(self, b)
			return self / b
		end,
		__idiv = function(self, b)
			return self // b
		end,
		__mod = function(self, b)
			return self % b
		end,
		__pow = function(self, b)
			return self ^ b
		end,
		__tostring = function(self)
			return tostring(self)
		end,
		__eq = function(self, b)
			return self == b
		end,
		__lt = function(self, b)
			return self < b
		end,
		__le = function(self, b)
			return self <= b
		end,
		__len = function(self)
			return #self
		end,
		__iter = function(self)
			return next, self
		end,
		__namecall = function(self, ...)
			return self:_(...)
		end,
		__metatable = function(self)
			return getmetatable(self)
		end,
	}
}

--// methods

--[[
	Interceptive hook.

	Hooks `obj`'s metamethod `metamethod`
]]
function Metatable.get_L_closure(metamethod: string, obj: {any} | userdata)
	local hooked
	local metamethod_emulator = Metatable.metamethods[metamethod]

	xpcall(function()
		metamethod_emulator(obj)
	end, function()
		hooked = debug.info(2, "f")
	end)

	return hooked
end

--[[
	Interceptive hook.

	Attempts to scan for all available metamethods
]]
function Metatable.get_all_L_closures(obj: {any} | userdata)
	local metamethods = {}
	local innacurate = {}

	for method, _ in Metatable.metamethods do
		local metamethod, accurate = Metatable.get_L_closure(method, obj)
		metamethods[method] = metamethod
	end

	return metamethods
end

--[[
	Non-recursive hook.

	Calls `f` when a metamethod of `t` gets fired
]]
function Metatable.metahook(t: any, f: _function)
	local metahook = {
		__metatable = getmetatable(t) or "The metatable is locked"
	}

	for metamethod, value in Metatable.metamethods do
		metahook[metamethod] = function(self, ...)
			f()

			return Metatable.metahook({}, f) 
		end
	end

	return setmetatable({}, metahook)
end

--// Localization

local setmetatable = setmetatable
local pcall = pcall
local table = table.clone(table)
local debug = debug
local string = string
local setfenv = setfenv
local getfenv = getfenv

local nonluaglobals = {}
local libs = {
	coroutine = coroutine,
	math = math,
	buffer = buffer,
	table = table,
	string = string,
	os = os,
	utf8 = utf8,
	bit32 = bit32,
	debug = debug,
	task = task
}

for libname, libvalue in next, libs do
	for funcname, _ in next, libvalue do
		nonluaglobals[funcname] = string.format('%s.%s', libname, funcname)
	end
end

local SelectedNum = 2147483647 ^ 2
local SelectedStuff = {}

table.rawlength = function(t)
	local r = 0
	for _, _ in next, t do
		r = r + 1
	end
	return r
end

table.concat = function(t, sep)
	sep = sep or ''
	local result = ''
	local count = 1
	local length = table.rawlength(t)

	for _, v in next, t do
		result = result .. tostring(v)
		if count ~= length then
			result = result .. sep
		end
		count = count + 1
	end

	return result
end

local noreturnvalue={'print','warn','error','task.spawn','assert','delay','task.delay','printidentity','spawn','collectgarbage','debug.profilebegin','debug.profileend','debug.resetmemorycategory','debug.dumpcodesize','math.randomseed','table.clear','table.foreach','table.foreachi','table.insert','table.sort','task.synchronize','task.desynchronize','task.cancel','buffer.writei8','buffer.writeu8','buffer.writei16','buffer.writeu16','buffer.writei32','buffer.writeu32','buffer.writef32','buffer.writef64','buffer.writestring','buffer.copy','buffer.fill'}


local stack = {}

--// Init

local function get_param_num(f)
	return debug.info(f, "a")
end

local function merge_t(a, b)
	local r = {}

	for i, v in a do r[i] = v end
	for i, v in b do r[i] = v end

	return r
end

local lens = {}

--// Sandbox
local function Sandbox(f: (...any) -> (...any), upvalues: {any}?, constants: {string}?, protos: {(...any) -> (...any)}?, i: number?, params)
	upvalues = upvalues or {}
	constants = constants or {}
	protos = protos or {}
	params = params or {}
	i = i or 1

	local root = {
		root = true,
		children = {},
		stack = {},
		params = {},
		constants = constants,
		upvalues = upvalues,
		protos = protos,
		pc = 0,
		function_info = {debug.info(f, "na")},
		f = f,
		i = i,
		error_message = '',
		fenv = getfenv(f)
	}

	local id_i = 0
	local last_func

	local function wrap(parent: {pc: number?, children: {any}, arguments: {any?}?})
		local hooks = {}
		local t = {}

		for metamethod in Metatable.metamethods do
			local SelectedNum2 = math.random(2 ^ 16, 2 ^ 24)
			hooks[metamethod] = function(_, ...)
				root.pc += 1

				local pc = root.pc
				local stack = root.stack
				local self = {pc = pc, children = {}, parent = parent, arguments = {...}, metamethod = metamethod}

				SelectedStuff[SelectedNum2] = SelectedNum2 * SelectedNum * pc

				parent.children[pc] = self

				if metamethod == "__len" then
					return SelectedNum2 * SelectedNum * pc
				elseif metamethod == '__tostring' then
					return tostring(parent)
				end

				return wrap(self)
			end
		end

		if root.pc ~= 0 then
			root.stack[t] = root.pc
		else
			root.stack[t] = id_i
			root.params[t] = id_i

			id_i += 1
		end

		return setmetatable(t, hooks)
	end

	local env = wrap(root)

	local param_num, vararg = get_param_num(f)

	for i = 1, param_num do
		local arg = wrap(root)

		table.insert(params, arg)
		root.params[arg] = root.i

		root.i += 1
	end

	if vararg then
		local vararg = wrap(root)

		table.insert(params, vararg)
		root.params[vararg] = "..."
	end

	if Settings.return_values then
		local original_env = getfenv(f)
		local return_value
		task.spawn(function()
			return_value = {pcall(setfenv(f, env), unpack(params))}
		end)
		for _ = 1, 100 do
			if return_value then break end
			task.wait(.1)
		end
		if not return_value then
			warn("ERR_1: Function decompile timeout.")
			return
		end
		if return_value[1] then setfenv(f, original_env) end

		root.return_value = table.move(return_value, 2, #return_value, 1, {})
		root.success = return_value[1]
		root.error_message = not root.success and return_value[2]
	else
		root.success = true
		root.return_value = {}
	end

	return root
end

local function Clean(a) -- Remove spaces or illegal charcters from the text
	return a:match("%w+")
end

local libs = {string=string, coroutine=coroutine, buffer=buffer, os=os, task=task, utf8=utf8, math=math, table=table, bit32=bit32, debug=debug}
local format;
local quickaccess = {}

function equals(tbl, tbl2) -- Shallow equals for tree.return_value
	if type(tbl) ~= 'table' or type(tbl2) ~= 'table' then return tbl == tbl2 end
	for i, v in next, tbl do
		if tbl2[i] ~= v then return false end
	end
	return true
end

--// Disassembler
local function Disassemble(tree: {any}, tabs: number?)
	tabs = tabs or 1
	local tab_formatting = (" "):rep(tabs)

	local stack = tree.stack
	local params = tree.params
	local upvalues = tree.upvalues
	local final_pc = tree.pc
	local success = tree.success
	local function_info = tree.function_info
	local i = tree.i

	local stack_offset do
		stack_offset = (final_pc > 0 and 1) or 0
	end

	local disassembly = {}
	local constants = {}
	local protos = {}

	local pc = 0

	function format(value, tabs2, exclude)
		tabs2 = tabs2 or tabs
		local type = typeof(value)

		local s_index = stack[value]
		local p_index = params[value]
		local uv_index = upvalues[value]

		if p_index then
			if p_index ~= "..." then
				return ("_p%d"):format(tonumber(p_index) or 1)
			end
			return p_index
		elseif s_index and tonumber(s_index) then
			return ("v%d"):format(tonumber(s_index))
		elseif uv_index then
			if not upvalues[value] then
				disassembly[1] = ("local _uv_%s = v%d[%s]\n"):format(uv_index, uv_index)..(disassembly[1] or "")
			else
				return ("_p%s"):format(uv_index)
			end

			return ("_uv_%d"):format(uv_index)
		elseif not p_index and not s_index and not uv_index and type == 'number' then
			return tostring(value)
		end

		if type == exclude then
			return nil
		end

		if type == "string" then

			local s = ""

			for _, char in {value:byte(1, -1)} do
				if char > 126 or char < 32 then
					s ..= "\\"..char
				else
					s ..= string.char(char)
				end
			end

			table.insert(constants, value)

			if Settings.decode_bytes then
			 s = string.gsub(s, "\\(%d+)", string.char)
			end

			return ('"%s"'):format(s)
		elseif type == "table" then
			local t = ""
			local mt = getmetatable(value)
			local count = 0
			local total = 0
			local a = ' '
			local tabf = a:rep(tabs)

			for _, _ in next, value do
				total = total + 1
			end

			for i, v in next, value do
				count = count + 1
				local betterI = typeof(i) == 'number' and tostring(i) or string.format('"%s"', tostring(i))
				local betterV = typeof(v) == 'number' and tostring(v) or format(v, tabs2 + 1)
				t ..= ("%s%s[%s] = %s%s"):format(Settings.table_display == 'maximized' and '\n' or '', Settings.table_display == 'maximized' and (a:rep(tabs2) .. ' ') or '', betterI, betterV, count < total and ', ' or '')
			end

			t = ("{%s%s%s%s}"):format(tabf, t, count > 0 and '\n' or '', a:rep(tabs2))

			if typeof(mt) == 'table' then
				local methods = '{'

				for MethodIndex, _ in Metatable.metamethods do
					local rg = rawget(mt, MethodIndex)
					if rg then
						methods ..= ('%s%s%s = %s;'):format(Settings.table_display == 'maximized' and '\n' or '', tab_formatting .. ' ', MethodIndex, format(rg))
					end
				end

				methods = #methods > 1 and methods .. '\n' .. a:rep(tabs + 4) .. '}\n' .. a:rep(tabs + 1) or '{}'

				t = ('setmetatable(%s, %s)'):format(t, methods)
			end

			return t
		elseif type == "function" then
			if not table.find(protos, value) and value ~= tree.f then
				table.insert(protos, value)

				local paramcount, isvrg = debug.info(tree.f, 'a')

				local pars = ''

				if isvrg then
					pars = '...'
				else
					for i = 1, paramcount do
						pars = pars .. '_p' .. tostring(i)
						if i ~= paramcount then
							pars = pars .. ', '
						end
					end
				end

				for lib_name, lib_value in next, libs do
					for func_name, func_val in next, lib_value do
						if func_val == value then
							return string.format('%s.%s', lib_name, func_name)
						end
					end
				end

				local sandbox = Sandbox(value, merge_t(table.clone(params), upvalues), constants, protos, i)
				local _disassembly = Disassemble(sandbox, tabs + 1)

				if sandbox.function_info[1] == "" then
					return ("function(%s)\n%s%s\n%send"):format(
					pars, tab_formatting, _disassembly, tab_formatting
					)
				else
					disassembly[pc + 1] = ("%slocal function %s(%s) %s\n%send\n"):format(
					tab_formatting,
					sandbox.function_info[1],
					pars,
					_disassembly,
					tab_formatting
					)..(disassembly[pc] or "") 

					pc += 1 + stack_offset

					return sandbox.function_info[1]
				end
			elseif value == tree.f then
				local func_name = debug.info(value, "n")

				if func_name == "" then
					return "__func__"
				else
					return func_name
				end
			else
				return ("function() --[[ Unknown proto ]] end")
			end
		end

		if type == "userdata" or type == "vector" then
			local index = math.random(0, 0xFFF)
			stack[value] = index

			return "newproxy(" .. tostring(getmetatable(value) ~= nil) .. ')'
		elseif type == 'Instance' then
			return GetFullName(value)
		end

		return tostring(value)
	end

	local function format_tuple(...)
		local t = {}

		local last = 0
		for i, index in {...} do
			if i - last > 1 then
				local void_size = i - last - 1
				table.move(table.create(void_size, "nil"), i, void_size, 1, t)
			end		

			table.insert(t, format(index))

			last = i
		end

		return table.concat(t, ", ")
	end

	local function parse(branch, parent)
		if math.random(0, 2) == 0 then task.wait() end -- prevent script timeout while maintaining performance

		pc = branch.pc

		local metamethod = branch.metamethod
		local args = branch.arguments

		local parent_pc = (parent and parent.pc) or 0
		local a, b = args[1], args[2]

		a = a or '(???)'

		local global = parent == nil

		local argCount, isv = debug.info(tree.f, 'a')

		argCount = isv and math.huge or argCount

		local push = ("-- unsupported method '%s'"):format(metamethod)

		local adjusted_pc = (pc - 1) % argCount + 1

		if metamethod == "__index" then
			if global then
				push = ("local v%d = %s"):format(pc, a)

				table.insert(constants, a)

				stack[pc] = a
			else
				if not nonluaglobals[a] then
					local thing = ''
					if Clean(a) == a then
						thing = string.format('.%s', tostring(a))
					else
						thing = string.format("[%s]", tostring(format(a)))
					end
					push = ("local v%d = %s%s"):format(pc, 'v' .. tostring(parent_pc), thing)
				else
					local result
					if stack[pc-1] then
						local lib = stack[pc-1]
						result = nonluaglobals[a]:gsub(lib, 'v' .. tostring(pc-1))
					end
					push = ("local v%d = %s"):format(pc, result or a)
				end


				table.insert(constants, a)

				stack[pc] = Clean(a) == a and '.' .. a or string.format("[%s]", tostring(format(a)))
			end

		elseif metamethod == "__newindex" then
			if global then
				push = ("local v%d = %s"):format(pc, format(b))

				table.insert(constants, a)

				stack[pc] = format(b)
			else
				push = ("v%d[%s] = %s"):format(parent_pc, format(a), format(b))

				table.insert(constants, a)

				stack[pc] = format(b)
			end
		elseif metamethod == "__call" then
			local namecall_info = ""
			local namecall_stack = stack[args[1] or -1]
			local is_namecall = namecall_stack == parent_pc - 1

			if is_namecall and (parent and parent.parent and parent.parent.arguments) then
				local a = parent.parent.arguments[1] or "(???)"
				local b = parent.arguments[1] or "(???)"

				pcall(function()
					namecall_info = ("-- %s.%s(%s)"):format(a, b, format_tuple(unpack(args)))
				end)
			end
			local tpl = format_tuple(unpack(args))
			local rgs = tpl:split(',')
			local result = ''
			for ff, arg in rgs do
				local arg2 = arg:gsub(' ', '')
				if arg2:sub(1, 2) == '_p' and arg2:sub(3, #arg):match("%d+") == arg2:sub(3, #arg) then
					local index = tonumber(arg2:sub(3, #arg))
					local nIndex = index
					if argCount < index then
						nIndex = (index - 1) % argCount + 1
					end
					arg2 = arg2:gsub(index, nIndex)
				end
				result = result .. arg2
				if ff < #rgs then
					result = result .. ', '
				end
			end
			push = ("local v%d = %s(%s)"):format(pc, parent_pc > 0 and 'v' .. tostring(parent_pc) or '_p' .. tostring(adjusted_pc), tpl)
		elseif metamethod == '__tostring' then
			local thing = ''
			if parent_pc > 0 then
				thing = thing .. 'v'.. tostring(parent_pc)
			else
				thing = thing .. '_p'.. tostring(adjusted_pc)
			end
			push = ("local v%d = tostring(%s)"):format(pc, thing)
		else
			local only_self = {
				__len = "#",
				__unm = "-",
			}

			local math = {
				__add = "+",
				__sub = "-",
				__mul = "*",
				__div = "/",
				__idiv = "//",
				__pow = "^",
				__eq = "==",
				__lt = "<",
				__le = "<=",
				__mod = "%",
				__concat = '..'
			}

			local self_index, math_index = only_self[metamethod], math[metamethod]

			if self_index then
				local thing = self_index
				if parent_pc > 0 then
					thing = thing .. 'v'.. tostring(parent_pc)
				else
					thing = thing .. '_p'.. tostring(adjusted_pc)
				end
				push = ("local v%d = %s"):format(
				pc,
				lens['v' .. tostring(parent_pc)] or thing
				)
				table.insert(constants, 'v' .. tostring(pc))
			elseif math_index then
				push = ("local v%d = v%d %s %s"):format(pc, parent_pc, math_index, format(a))
			end
		end

		disassembly[pc + stack_offset] = tab_formatting .. push

		for _, child in next, branch.children do
			parse(child, branch)
		end
	end

	for _, child in next, tree.children do
		parse(child)
	end

	if success then
		local return_value = tree.return_value

		if final_pc > 0 then
			table.insert(disassembly, "")
		end

		if #return_value > 0 then
			if type(return_value[1]) == 'table' and rawlength(return_value[1]) < Settings.max_table_size then
				table.insert(disassembly, ("%sreturn %s\n"):format(tab_formatting, format_tuple(unpack(return_value))))
			elseif type(return_value[1]) == 'table' and rawlength(return_value[1]) > Settings.max_table_size then
				table.insert(disassembly, ("%sreturn %s -- Skipped %d elements due to max_table_size.\n"):format(
					tab_formatting, format_tuple(
						move(return_value[1], 1, Settings.max_table_size, 1, {})
					),
					rawlength(return_value[1]) - Settings.max_table_size
					)
				)
			else
				table.insert(disassembly, ("%sreturn %s\n"):format(
					tab_formatting, format_tuple(unpack(return_value))
					)
				)
			end
		end
	end

	disassembly = table.concat(disassembly, "\n")

	return ((not success and ("%s-- An error occured while decompiling (@pc %d): %s\n"):format(tab_formatting, final_pc, tree.error_message)) or "")..disassembly .. '\n', constants, protos, success
end

local function typefind(a, b)
	if type(a) ~= 'table' then return a end
	local result = {}
	for c, d in next, a do
		if type(d) == 'table' then
			result[c] = typefind(d, b)
		elseif type(d) ~= 'table' and type(d) ~= 'function' then
			result[c] = d
		end
	end
	return result
end

function Decompile(f: (...any) -> (...any), params)
	local start = tick()
	local Sandboxed = Sandbox(f, {}, {}, {}, 0, params)
	local disassembly, constants, protos, _ = Disassemble(Sandboxed)

	local Output = ''

	if Settings.IncludeFunctionEnv then
		Output = '-- fenv start\n'
		for Index, Value in next, Sandboxed.fenv do
			if type(Value) ~= 'function' then
				local v = typefind(Value, 'function')
				Output = Output .. string.format("%s = %s\n", tostring(Index), format(v))
			end
		end
		Output = Output .. '\n\n-- fenv end\n\n'
	end

	if type(f) == 'function' then
		local params = {}
		local ParamCount, IsVrg = debug.info(f, 'a')
		if not IsVrg then
			for i = 1, ParamCount do
				table.insert(params, '_p' .. tostring(i))
			end
		else
			params = {'...'}
		end
		local n = debug.info(f, 'n')
		Output = Output .. string.format('function %s(%s)\n', n ~= '' and n or '__func__', table.concat(params, ', '))
	end

	Output = Output .. disassembly

	Output = Output:gsub("(%d+%.*%d*%w*%+*%-*%d*)", function(match) -- The length fixer
		local m = tonumber(match)

		for num, result in SelectedStuff do
			if result == m then
				local PC = math.round(result/ SelectedNum / num)
				local v2 = constants[PC]
				local fixedMatch = v2
				return fixedMatch
			end
		end


		return match
	end)

	local values, removed, usage = {}, {}, {}

	local function getvalue(v)
		for var, val in next, values do
			if var == v then
				return val
			end
		end
		return v
	end

	local function getvar(v)
		for var, val in next, values do
			if val == v then return var end
		end
	end

	Output = Output:gsub('(v%d+)', function(a)
		if not usage[a] then usage[a] = 1 else usage[a] = usage[a] + 1 end
	end)
	Output = Output:gsub("local (v%d+)(%s*)=(%s*)([^%s]+)", function(a, space1, space2, b)
		for i, v in next, values do
			if v == b then
				table.insert(removed, a)
				values[a] = getvar(v)
				return ""
			end
		end
		usage[a] = usage[a] - 1
		values[a] = b
	end)

	Output = Output:gsub('(local%s*v%d+)(%s*=%s*)(%w+)%(', function(v1, v2, var)
		local a = var
		repeat a = getvalue(a) until not values[a]
		if table.find(noreturnvalue, a) then
			return var .. '('
		else
			return v1 .. v2 .. var .. '('
		end
	end)

	Output = Output:gsub("(v%d+)%.(%w+)", function(var, index)
		if usage[var] == 1 then
			table.insert(removed, var)
			return string.format('%s.%s', getvalue(var):gsub('v%d+', getvalue), index)
		end
	end)

	for _, var in next, removed do
		Output = Output:gsub(`local {var}%s*=%s*([^%s]+)`, function(a)
			return ""
		end)
		Output = Output:gsub(`{var}%(`, getvalue(var) .. '(')
		Output = Output:gsub(`{var}%.`, getvalue(var) .. '.')
	end

	Output = Output:gsub("\n%s*\n", "\n")


	return string.format("-- Decompiled with Function Dumper (Forked xAPI function decompiler) in about %.14f seconds.\n", tick() - start) .. Output .. 'end'
end

return Decompile