-- // MoreUNC V2.0.0, Have fun skidding devs!

local Operations = { -- Fixes executors that only use lua, not luau
	Addition = {'(%w+)(%s*)%+=(%s*)(%w+)', '%1%2=%3%1%2+%3%4'}, -- v1+=v2 -> v1=v1+v2
	Subtraction = {'(%w+)(%s*)%-=(%s*)(%w+)', '%1%2=%3%1%2-%3%4'}, -- v1-=v2
	Multiplication = {'(%w+)(%s*)%*=(%s*)(%w+)', '%1%2=%3%1%2*%3%4'}, -- v1*=v2
	Division = {'(%w+)(%s*)/=(%s*)(%w+)', '%1%2=%3%1%2/%3%4'}, -- v1/=v2
	Modulus = {'(%w+)(%s*)%%=(%s*)(%w+)','%1%2=%3%1%2%%%3%4'}, -- v1%=v2
	Concatenation = {'(%w+)(%s*)%.%.=(%s*)(%w+)', '%1%2=%3%1%2..%3%4'} -- v1..=v2
}
local forceoverride = {}

function replace(Code)
	for _, t in next, Operations do
		Code = string.gsub(Code, t[1], t[2])
	end
	return Code
end

local Options = {
	OverrideFunctions = true, -- If the executor Overrides already existing functions
	enviroment = setmetatable({}, {__protected = 'This metatable is protected'}),-- i don't really care if you unprotect it.
	OverrideIgnore = {'loadstring', 'checkcaller', 'isexecutorclosure', 'isourclosure', 'isexecclosure'} -- Functions you don't wanna override if they already exist
}

-- // Localization:

local rawget = rawget
local loadstring = loadstring
local oldLoadstring = loadstring
local setmetatable = setmetatable
local type = type
local pairs = pairs
local next = next
local typeof = typeof
local debug = debug
local table = table
local string = string
local bit32 = bit32
local require = require

local Queue = {}
Queue.__index = Queue
function Queue.new()
	local self = setmetatable({}, Queue)
	self.elements = {}
	return self
end

function Queue:Queue(element)
	table.insert(self.elements, element)
end

function Queue:Update()
	if #self.elements == 0 then
		return nil
	end
	return table.remove(self.elements, 1)
end

function Queue:IsEmpty()
	return #self.elements == 0
end
function Queue:Current()
	return self.elements
end
local ClipboardQueue = Queue.new()

-- // Instances:

local Players = game:GetService("Players")
local ScriptType = script.ClassName == 'Script' and 'Server' or script.ClassName == 'LocalScript' and 'Client' or script.ClassName == 'ModuleScript' and 'Module'
local lp = ScriptType == 'Client' and Players.LocalPlayer or Players.PlayerAdded:Wait()

getgenv = getgenv or function()
	return getfenv(0)
end

-- // Variables

local hui = nil

local valid = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'

local nilinstances, CachedInstances, DrawingCache = {Instance.new("LocalScript")}, {}, {}

local keys={[0x08]=Enum.KeyCode.Backspace,[0x09]=Enum.KeyCode.Tab,[0x0C]=Enum.KeyCode.Clear,[0x0D]=Enum.KeyCode.Return,[0x10]=Enum.KeyCode.LeftShift,[0x11]=Enum.KeyCode.LeftControl,[0x12]=Enum.KeyCode.LeftAlt,[0x13]=Enum.KeyCode.Pause,[0x14]=Enum.KeyCode.CapsLock,[0x1B]=Enum.KeyCode.Escape,[0x20]=Enum.KeyCode.Space,[0x21]=Enum.KeyCode.PageUp,[0x22]=Enum.KeyCode.PageDown,[0x23]=Enum.KeyCode.End,[0x24]=Enum.KeyCode.Home,[0x2D]=Enum.KeyCode.Insert,[0x2E]=Enum.KeyCode.Delete,[0x30]=Enum.KeyCode.Zero,[0x31]=Enum.KeyCode.One,[0x32]=Enum.KeyCode.Two,[0x33]=Enum.KeyCode.Three,[0x34]=Enum.KeyCode.Four,[0x35]=Enum.KeyCode.Five,[0x36]=Enum.KeyCode.Six,[0x37]=Enum.KeyCode.Seven,[0x38]=Enum.KeyCode.Eight,[0x39]=Enum.KeyCode.Nine,[0x41]=Enum.KeyCode.A,[0x42]=Enum.KeyCode.B,[0x43]=Enum.KeyCode.C,[0x44]=Enum.KeyCode.D,[0x45]=Enum.KeyCode.E,[0x46]=Enum.KeyCode.F,[0x47]=Enum.KeyCode.G,[0x48]=Enum.KeyCode.H,[0x49]=Enum.KeyCode.I,[0x4A]=Enum.KeyCode.J,[0x4B]=Enum.KeyCode.K,[0x4C]=Enum.KeyCode.L,[0x4D]=Enum.KeyCode.M,[0x4E]=Enum.KeyCode.N,[0x4F]=Enum.KeyCode.O,[0x50]=Enum.KeyCode.P,[0x51]=Enum.KeyCode.Q,[0x52]=Enum.KeyCode.R,[0x53]=Enum.KeyCode.S,[0x54]=Enum.KeyCode.T,[0x55]=Enum.KeyCode.U,[0x56]=Enum.KeyCode.V,[0x57]=Enum.KeyCode.W,[0x58]=Enum.KeyCode.X,[0x59]=Enum.KeyCode.Y,[0x5A]=Enum.KeyCode.Z,[0x5D]=Enum.KeyCode.Menu,[0x60]=Enum.KeyCode.KeypadZero,[0x61]=Enum.KeyCode.KeypadOne,[0x62]=Enum.KeyCode.KeypadTwo,[0x63]=Enum.KeyCode.KeypadThree,[0x64]=Enum.KeyCode.KeypadFour,[0x65]=Enum.KeyCode.KeypadFive,[0x66]=Enum.KeyCode.KeypadSix,[0x67]=Enum.KeyCode.KeypadSeven,[0x68]=Enum.KeyCode.KeypadEight,[0x69]=Enum.KeyCode.KeypadNine,[0x6A]=Enum.KeyCode.KeypadMultiply,[0x6B]=Enum.KeyCode.KeypadPlus,[0x6D]=Enum.KeyCode.KeypadMinus,[0x6E]=Enum.KeyCode.KeypadPeriod,[0x6F]=Enum.KeyCode.KeypadDivide,[0x70]=Enum.KeyCode.F1,[0x71]=Enum.KeyCode.F2,[0x72]=Enum.KeyCode.F3,[0x73]=Enum.KeyCode.F4,[0x74]=Enum.KeyCode.F5,[0x75]=Enum.KeyCode.F6,[0x76]=Enum.KeyCode.F7,[0x77]=Enum.KeyCode.F8,[0x78]=Enum.KeyCode.F9,[0x79]=Enum.KeyCode.F10,[0x7A]=Enum.KeyCode.F11,[0x7B]=Enum.KeyCode.F12,[0x90]=Enum.KeyCode.NumLock,[0x91]=Enum.KeyCode.ScrollLock,[0xBA]=Enum.KeyCode.Semicolon,[0xBB]=Enum.KeyCode.Equals,[0xBC]=Enum.KeyCode.Comma,[0xBD]=Enum.KeyCode.Minus,[0xBE]=Enum.KeyCode.Period,[0xBF]=Enum.KeyCode.Slash,[0xC0]=Enum.KeyCode.Backquote,[0xDB]=Enum.KeyCode.LeftBracket,[0xDD]=Enum.KeyCode.RightBracket,[0xDE]=Enum.KeyCode.Quote}
local vim;

-- // Drawing:

local FakeFonts = setmetatable({
	UI = 0,
	System = 1,
	Plex = 2,
	Monospace = 3,
}, {
	__call = function(s) return s end
})
local Fonts = {
	[0] = Enum.Font.Arial,
	[1] = Enum.Font.BuilderSans,
	[2] = Enum.Font.Gotham,
	[3] = Enum.Font.RobotoMono
}

local Base = {
	Visible = false,
	Color = Color3.new(0,0,0),
	ClassName = nil,
	Remove = function(self)
		for i, v in next, DrawingCache do
			if v == self then
				local a = i
				i:Destroy()
				DrawingCache[a] = nil
			end
		end
	end
}
Base.Destroy = Base.Remove

-- // Drawing end

local function try(fn, ...)
	return (pcall(fn, ...))
end

local function newcclosure(f)
	local a = coroutine.wrap(function(...)
		local b = {coroutine.yield()}
		while true do
			b = {coroutine.yield(f(table.unpack(b)))}
		end
	end)
	a()
	return a
end

local function getthreadidentity()
	local securityChecks = {
		{
			name = "None",
			number = 0,
			canAccess = try(function() return game.Name end)
		},
		{
			name = "PluginSecurity",
			number = 1,
			canAccess = try(function() return game:GetService("CoreGui").Name end)
		},
		{
			name = "LocalUserSecurity",
			number = 3,
			canAccess = try(function() return game.DataCost end)
		},
		{
			name = "WritePlayerSecurity",
			number = 4,
			canAccess = try(Instance.new, "Player")
		},
		{
			name = "RobloxScriptSecurity",
			number = 5,
			canAccess = try(function() return game:GetService("CorePackages").Name end)
		},
		{
			name = "RobloxSecurity",
			number = 6,
			canAccess = try(function() return Instance.new("SurfaceAppearance").TexturePack end)
		},
		{
			name = "NotAccessibleSecurity",
			number = 7,
			canAccess = try(function() Instance.new("MeshPart").MeshId = "" end)
		}
	}
	local lasti = 1
	for i = 1, #securityChecks do
		if securityChecks[i].canAccess then
			lasti = i
		else
			return lasti
		end
	end
	return lasti
end

if getthreadidentity() >= 3 then
	vim = Instance.new("VirtualInputManager")
end

local RBXActive = true

local ClipboardUI = Instance.new("ScreenGui")
local ClipboardBox = Instance.new('TextBox') -- For setclipboard
ClipboardBox.Position = UDim2.new(100, 0, 100, 0) -- VERY off screen
ClipboardBox.Parent = ClipboardUI

local HttpService, DrawingUI = game:GetService('HttpService'), Instance.new("ScreenGui")

-- // Libararies:
local protected_guis = {}

-- // Events:

game.DescendantRemoving:Connect(function(d)
	table.insert(nilinstances, d)
end)
game:FindFirstChildOfClass('UserInputService').WindowFocused:Connect(function()
	RBXActive = true
end)
game:FindFirstChildOfClass('UserInputService').WindowFocusReleased:Connect(function()
	RBXActive = false
end)

function rawlength(t1)
	if type(t1) ~= 'table' then return 0 end
	local count = 0
	for _, _ in next, t1 do count = count + 1 end
end

function shallowequals(t1, t2)
	if t1 == nil or t2 == nil then
		return false
	end

	if type(t1) ~= 'table' or type(t2) ~= 'table' then
		return false
	end

	for key, value in next, t1 do
		if t2[key] ~= value then
			return false
		end
	end

	for key, value in next, t2 do
		if t1[key] ~= value then
			return false
		end
	end

	return true
end

function SetAliases(func, aliases)
	for _, Name in next, aliases do
		Options.enviroment[Name] = getgenv()[func] or Options.enviroment[func]
	end
end

function AddElement(name, val, aliases, forcebypass)
	if forcebypass == true then table.insert(forceoverride, name) end
	Options.enviroment[name] = val
	if typeof(aliases) == 'table' then
		SetAliases(name, aliases)
	end
	return val
end

function AddEnviroment()
	local env = (getgenv and getgenv()) or getfenv(0)
	for Name, Value in next, Options.enviroment do
		if Options.OverrideFunctions or not env[Name] or table.find(forceoverride, Name) or (type(Value) == 'table' and (not shallowequals(env[Name], Value) or rawlength(Value) > rawlength(env[Name]))) and not table.find(Options.OverrideIgnore, Name) then
			print("â Added",Name)
			env[Name] = Value
		elseif env[Name] and not table.find(forceoverride, Name) and not Options.OverrideFunctions or (type(Value) == 'table' and (shallowequals(env[Name], Value) or rawlength(Value) <= rawlength(env[Name]))) or table.find(Options.OverrideIgnore, Name) then
			print("â",Name,'already exists.')
		end
	end
end

local Base64 = AddElement('base64', {
	encode = function(data)
		local letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		return ((data:gsub('.', function(x) 
			local r,b='',x:byte()
			for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
			return r;
		end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
			if (#x < 6) then return '' end
			local c=0
			for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
			return letters:sub(c+1,c+1)
		end)..({ '', '==', '=' })[#data%3+1])
	end,
	decode = function(data)
		local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		data = string.gsub(data, '[^'..b..'=]', '')
		return (data:gsub('.', function(x)
			if x == '=' then return '' end
			local r, f = '', (b:find(x) - 1)
			for i = 6, 1, -1 do
				r = r .. (f % 2^i - f % 2^(i - 1) > 0 and '1' or '0')
			end
			return r;
		end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
			if #x ~= 8 then return '' end
			local c = 0
			for i = 1, 8 do
				c = c + (x:sub(i, i) == '1' and 2^(8 - i) or 0)
			end
			return string.char(c)
		end))
	end
})
AddElement('base64encode', Base64.encode, {'base64_encode'})
AddElement('base64decode', Base64.decode, {'base64_decode'})
AddElement('debug', {
	getinfo = function(f)
		assert(type(f)=='number' or type(f) == 'function', 'invalid argument #1 to \'getinfo\', number or function expected, got ' .. tostring(typeof(f)))
		local ParamCount, IsVararg = debug.info(f, 'a')
		local n = debug.info(f, 'n') ~= '' and debug.info(f, 'n') or ''
		local source = debug.info(f, 's')
		return{
			numparams = ParamCount,
			is_vararg = IsVararg and 1 or 0,
			name = n,
			currentline = debug.info(f, 'l'),
			source = source,
			short_src = source:sub(1, 60),
			what = source == '[C]' and 'C' or 'Lua',
			func = f,
			nups = 0
		}
	end
})

-- // Sandboxing Game:

-- // HTTP Requests Support

function rqst(Options)
	assert(type(Options) == 'table', 'Argument #1 to \'request\' must be a table, got ' .. typeof(Options))
	if typeof(script) == 'Instance' and script.ClassName == 'Script' then
		return HttpService:RequestAsync(Options)
	end
	local Timeout, Done, Time = 5, false, 0
	local Return = {
		Success = false,
		StatusCode = 408,
		StatusMessage = 'Request Timeout',
		Headers = {},
		Body = ''
	}
	local function Callback(Success, Response)
		Done = true
		Return.Success = Success
		Return.StatusCode = Response.StatusCode
		Return.StatusMessage = Response.StatusMessage
		Return.Headers = Response.Headers
		Return.Body = Response.Body
	end
	HttpService:RequestInternal(Options):Start(Callback)
	while not Done and Time < Timeout do -- probably a bad approach?
		Time = Time + .1
		task.wait(.1)
	end
	return Return
end

AddElement('http', {
	request = rqst
})
local s, e = pcall(function()
	return game.HttpGet
end)
local _game = game
AddElement('request', rqst, {'http_request', 'syn_backup.request', 'syn.request'})
if not s then
	AddElement('game', setmetatable({}, {
		__index = function(self, key)
			if key == 'HttpGet' then
				return function(_, Url)
					return rqst({Url = Url, Method = "GET"}).Body
				end
			elseif key == 'HttpPost' then
				return function(Url, Data, contentType)
					local Args = {Url = Url, Method = "POST", Body = Data}
					if contentType then
						Args.Headers = {['Content-Type'] = contentType}
					end
					return rqst(Args).Body
				end
			else
				local k = _game[key]
				if type(k) == 'function' then
					return function(_, ...)
						local args = {...}
						if (key == 'GetService' or key == 'FindFirstChildOfClass') and args[1] == 'Players' then
							return setmetatable({},
							{
								__index = function(_, t)
									if t == 'LocalPlayer' then return lp end
									local p = Players[t]
									if type(p) == 'function' then
										return function(_, ...)
											return Players[t](Players, ...)
										end
									else
										return p
									end
								end,
							})
						end
						return k(_game, ...)
					end
				else
					return k
				end
			end
		end,
		__tostring = function() return tostring(game) end
	}))
end

local LoadSuccess, HashCode = pcall((not s and Options.enviroment.game.HttpGet or game.HttpGet), (not s and _game or game), "https://pastebin.com/raw/iRDTgy7w", true)
local LoadSuccessV2, rconsolecode = pcall((not s and Options.enviroment.game.HttpGet or game.HttpGet), (not s and _game or game), "https://pastebin.com/raw/haqApsFE", true)
local rconsole

if not LoadSuccess then
	Hash = {}
else
	Hash = loadstring(HashCode)()
end
if LoadSuccessV2 then
	rconsole = loadstring(rconsolecode)()
else
	warn("Hey! rconsole did not successfully load, This could be due to an HTTP error, Message:",rconsolecode)
end

local HashLib = setmetatable({}, {
	__metatable = 'HashLib // Protected',
	__index = function(self, key) -- Make it work for both _ and -
		local k1 = key:gsub('_', '-')
		local k2 = key:gsub('%-', '_')
		local m1, m2 = Hash[k1], Hash[k2]
		if m1 then return m1 end
		if m2 then return m2 end
		return rawget(self, key)
	end
})

-- // crypt library

AddElement('crypt', {
	hex = {
		encode = function(data)
			assert(type(data)=='string', 'argument #1 to \'hex.encode\' must be of type string, Received ' .. typeof(data))
			local hex = ''
			for i = 1, #data do
				hex = hex .. string.format("%02x", string.byte(data, i))
			end
			return hex
		end,
		decode = function(data)
			assert(type(data)=='string', 'argument #1 to \'hex.decode\' must be of type string, Received ' .. typeof(data))
			local text = ""
			for i = 1, #data, 2 do
				local byte_str = string.sub(data, i, i+1)
				local byte = tonumber(byte_str, 16)
				text = text .. string.char(byte)
			end
			return text
		end
	},
	custom = {
		hash = function(data, alg)
			local v1 = HashLib[alg]
			local v2 = HashLib[data]
			if not v1 and not v2 then
				error(string.format("No algorithm found with name '%s' or '%s'", alg, data))
			end
			if v1 then
				return v1(data)
			elseif v2 then
				return v2(alg)
			end
		end
	},
	hash = function(data, alg)
		local v1 = HashLib[alg]
		local v2 = HashLib[data]
		if not v1 and not v2 then
			error(string.format("No algorithm found with name '%s' or '%s'", alg, data))
		end
		if v1 then
			return v1(data)
		elseif v2 then
			return v2(alg)
		end
	end,
	url = {
		encode = function(data)
			return game:GetService("HttpService"):UrlEncode(data)
		end,
		decode = function(data)
			-- replace + with space
			data = string.gsub(data, '%+', ' ')
			-- replace hexadecimals with the character for them
			data = string.gsub(data, "%%(%x%x)", function(hex)
				return string.char(tonumber(hex, 16))
			end)
			data = string.gsub(data, "\r\n", "\n") -- obvious
			return data
		end
	},
	base64 = Base64,
	base64_encode = Base64.encode,
	base64_decode = Base64.decode,
	base64encode = Base64.encode,
	base64decode = Base64.decode,
	random = function(len)
		assert(type(len) == 'number', 'Argument #1 to \'random\' must be a number, got ' .. typeof(len))
		assert(len > 0 and len < 1025, 'Argument #1 to \'random\' must be over 0 and must not exceed 1024.')
		local a = {}
		for _=1,len do local r=math.random(1, #valid)table.insert(a,valid:sub(r,r))end;return table.concat(a)
	end,
	generatekey = function(len)
		len = len or 32
		local key = ''
		local Valid = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		for _ = 1, len do local n = math.random(1, #Valid) key = key .. string.sub(Valid, n, n) end
		return Base64.encode(key)
	end,
	generatebytes = function(len)
		assert(type(len) == 'number', 'Argument #1 to \'generatebytes\' must be a number, got ' .. typeof(len))
		local key = ''
		local Valid = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
		for _ = 1, len do local n = math.random(1, #Valid) key = key .. string.sub(Valid, n, n) end
		return Base64.encode(key)
	end
}, {'crypto', 'syn.crypto', 'syn_backup.crypto'})

-- // syn Library

AddElement('syn', {
	is_beta = function() return true end, -- ???? i do not know why this is needed
	protect_gui = function(gui) -- Unofficial protect
		protected_guis[gui] = { Parent = gui.Parent, Name = gui.Name }
		gui.Parent = gethui()
		gui.Name = randomstring(math.random(8, 16))
	end,
	unprotect_gui = function(gui)
		local Gui = rawget(protected_guis, gui)
		if not Gui then return error(`GUI {gui.Name} does not exist in the protected guis list.`, 1) end
		gui.Name = Gui.Name
		gui.Parent = Gui.Parent
		protected_guis[gui] = nil
	end,
	request = rqst,
	get_thread_identity = getthreadidentity,
	crypto = Options.enviroment.crypt
}, {'syn_backup'})

-- // cache Library

AddElement('cache', {
	iscached = function(d)
		return CachedInstances[d] ~= 'invalid'
	end,
	invalidate = function(d)
		CachedInstances[d] = 'invalid'
		d.Parent = nil
	end,
	replace = function(a, b)
		CachedInstances[a] = b
		b.Name = a.Name
		b.Parent = a.Parent
		a.Parent = nil
	end
})
-- // Drawing Library

AddElement('Drawing', {
	Fonts = FakeFonts,
	new = function(Type)
		local function SetBase(tbl)
			local baseProps = {
				Visible = false,
				Color = Color3.new(0,0,0),
				ClassName = nil,
				ZIndex = 1,
				Remove = function(self)
					for i, v in next, DrawingCache do
						if v == self then
							local a = i
							i:Destroy()
							DrawingCache[a] = nil
						end
					end
				end
			}
			baseProps.Destroy = baseProps.Remove
			for i, v in next, baseProps do
				rawset(tbl.__index, i, v)
			end
		end
		if Type == 'Line' then
			local a = Instance.new("Frame", DrawingUI)
			a.Visible = false
			a.Size = UDim2.new(0, 0, 0, 0)
			a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			a.BackgroundTransparency = 1
			a.BorderSizePixel = 0

			local meta = {}
			meta.ClassName = Type
			meta.__index = {
				Thickness = 1,
				From = Vector2.new(0, 0),
				To = Vector2.new(0, 0),
				Transparency = 0,
				updateLine = function(self)
					if not a then return end
					local from = self.From
					local to = self.To
					local distance = (to - from).Magnitude
					local angle = math.deg(math.atan2(to.Y - from.Y, to.X - from.X))

					a.Size = UDim2.new(0, distance, 0, self.Thickness)
					a.Position = UDim2.new(0, from.X, 0, from.Y)
					a.Rotation = angle
					a.BackgroundTransparency = 1 - self.Transparency
					a.BackgroundColor3 = self.Color
					a.Visible = self.Visible
					a.ZIndex = self.ZIndex
				end
			}
			SetBase(meta)
			meta.__newindex = function(self, key, value)
				if not self then return end
				if typeof(meta.__index[key]) == typeof(value) then
					rawset(self, key, value)
					self:updateLine()
				end
			end
			meta.__metatable = 'This metatable is protected.'
			local meta1 = setmetatable({}, meta)
			DrawingCache[a] = meta1
			return meta1
		elseif Type == 'Square' then
			local a = Instance.new("Frame", DrawingUI)
			a.Visible = false
			a.Size = UDim2.new(0, 0, 0, 0)
			a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			a.BackgroundTransparency = 1
			a.BorderSizePixel = 0
			local b = Instance.new("UIStroke", a)
			b.Color = Color3.fromRGB(255, 255, 255)
			b.Enabled = true

			local meta = {}
			meta.ClassName = Type
			meta.__index = {
				Size = Vector2.new(0,0),
				Position = Vector2.new(0, 0),
				Filled = false,
				updateSquare = function(self)
					if not a then return end
					a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
					a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
					b.Enabled = self.Filled
					b.Color = self.Color
					a.BackgroundColor3 = self.Color
					a.ZIndex = self.ZIndex
				end
			}
			SetBase(meta)

			meta.__newindex = function(self, key, value)
				if not self then return end
				if typeof(self[key]) == typeof(value) then
					rawset(self, key, value)
					self:updateSquare()
				end
			end
			local meta1 = setmetatable({}, meta)
			DrawingCache[a] = meta1
			return meta1
		elseif Type == 'Circle' then
			local a = Instance.new("Frame", DrawingUI)
			a.Visible = false
			a.Size = UDim2.new(0, 0, 0, 0)
			a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			a.BackgroundTransparency = 1
			a.BorderSizePixel = 0
			local b = Instance.new("UIStroke", a)
			b.Color = Color3.fromRGB(255, 255, 255)
			b.Enabled = false
			b.Thickness = 1
			local c = Instance.new("UICorner", a)
			c.CornerRadius = UDim.new(1, 0)

			local meta = {}
			meta.ClassName = Type
			meta.__index = {
				Thickness = 1,
				Filled = false,
				NumSides = 0,
				Radius = 1,
				Position = Vector2.new(0, 0),
				Transparency = 0,
				updateCircle = function(self)
					if not b or not a then return end
					a.Visible = self.Visible
					a.BackgroundTransparency = self.Transparency - 1
					a.Size = UDim2.new(0, self.Radius, 0, self.Radius)
					a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
					b.Enabled = not self
					b.Color = self.Color
					a.ZIndex = self.ZIndex
				end
			}

			SetBase(meta)

			meta.__newindex = function(self, key, value)
				if not self then return end
				if typeof(self[key]) == typeof(value) then
					rawset(self, key, value)
					self:updateCircle()
				end
			end

			local meta1 = setmetatable({}, meta)
			DrawingCache[a] = meta1
			return meta1
		elseif Type == 'Text' then
			local a = Instance.new("TextLabel", DrawingUI)
			a.Visible = false
			a.Size = UDim2.new(0, 0, 0, 0)
			a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			a.BackgroundTransparency = 1
			a.BorderSizePixel = 0
			a.TextStrokeColor3 = Color3.new(0,0,0)
			a.TextStrokeTransparency = 1

			local meta = {}
			meta.ClassName = Type
			meta.__index = {
				Text = '',
				Transparency = 0,
				Size = 0,
				Center = false,
				Outline = false,
				OutlineColor = Color3.new(0,0,0),
				Position = Vector2.new(0,0),
				Font = 3,
				updateText = function(self)
					if not a then return end
					a.TextScaled = true
					a.Size = UDim2.new(0, self.Size * 3, 0, self.Size / 2)
					a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
					a.Text = self.Text
					a.Font = Fonts[self.Font]
					a.Visible = self.Visible
					a.TextColor3 = self.Color
					a.BackgroundTransparency = 1 - self.Transparency
					a.BorderSizePixel = self.Outline and 1 or 0
					if self.Center then
						a.TextXAlignment = Enum.TextXAlignment.Center
						a.TextYAlignment = Enum.TextYAlignment.Center
					else
						a.TextXAlignment = Enum.TextXAlignment.Left
						a.TextYAlignment = Enum.TextYAlignment.Top
					end
					a.TextStrokeTransparency = self.Outline and 0 or 1
					a.TextStrokeColor3 = self.OutlineColor
					a.ZIndex = self.ZIndex
				end
			}

			SetBase(meta)

			meta.__newindex = function(self, key, value)
				if not self then return end
				if typeof(self[key]) == typeof(value) then
					rawset(self, key, value)
					self:updateText()
				end
			end

			local meta1 = setmetatable({}, meta)
			DrawingCache[a] = meta1
			return meta1
		end
	end})
local old = Options.enviroment.Drawing.new
Options.enviroment.Drawing.new = function(Type)
	if Type ~= 'Image' then
		return old(Type)
	else
		return old('Circle')
	end
end
AddElement('loadstring', function(code)
	local test = oldLoadstring('local result=3;result+=1;return result')()
	local test2 = oldLoadstring('local result="h";result..="i";return result')()
	if test ~= 4 or test2 ~= 'hi' then
		return oldLoadstring(replace(code))
	elseif test == 4 and test2 == 'hi' then
		return oldLoadstring(code)
	end
end, {}, true)
AddElement('getrenderproperty', function(drawing, prop)
	return drawing[prop]
end)
AddElement('setrenderproperty', function(a, b, c)
	if Options.enviroment.isrenderobj(a) then
		a[b] = c
	end
end)
AddElement('isrenderobj', function(a)
	for c, b in next, DrawingCache do
		if b == a then
			return true
		end
	end
	return false
end)

AddElement('gethui', function()
	if not hui then
		local s, _ = pcall(function()
			local Path1 = _game:FindFirstChildOfClass('CoreGui')
			hui = Instance.new("Folder", Path1)
			hui.Name = 'hidden_ui\0'
		end)
		if not s then
			if lp then
				hui = Instance.new("Folder", lp:FindFirstChildOfClass("PlayerGui"))
				hui.Name = 'hidden_ui\0'
			else
				if #Players:GetChildren() == 0 then
					repeat task.wait() until #Players:GetChildren() > 0
				end
				local random_player = Players:GetChildren()[math.random(1, #Players:GetChildren())]
				hui = Instance.new("Folder", random_player:FindFirstChild("PlayerGui")) -- Add it into a random player's PlayerGui if there isn't a local player
				hui.Name = 'hidden_ui\0'
			end
		end
	end
	return hui
end, {'get_hidden_ui', 'gethiddenui'})
AddElement('randomstring', function(length)
	length = length or 32
	local str = {}
	for i = 1, length do
		local r = math.random(1, #valid)
		str[i] = valid:sub(r, r)
	end
	return table.concat(str)
end)
AddElement('iscclosure', function(a)
	return debug.info(a, 's') == '[C]'
end, {'is_c_closure'})
AddElement('islclosure', function(a)
	return debug.info(a, 's') ~= '[C]'
end, {'is_l_closure'})
AddElement('isourclosure', function(a) -- Credits to empereans for this
	return debug.info(a, 's') == debug.info(1, 's')
end, {'isexecclosure', 'isexeclosure', 'is_executor_closure', 'isexecutorclosure', 'checkclosure'})
AddElement('getinstances', function() return game:GetDescendants() end)
AddElement('getnilinstances', function() return nilinstances end)
AddElement('isreadonly', function(t)
	return table.isfrozen(t)
end)
AddElement('isscriptable', function(instance, prop)
	assert(typeof(instance) == 'Instance', 'Argument #1 to \'setscriptable\' must be an Instance, got ' .. typeof(instance))
	return select(1, pcall(function()
		return instance[prop]
	end))
end, {'is_scriptable'})
AddElement('getscripts', function()
	local a = {}for _, v in next, game:GetDescendants() do if v.ClassName == 'ModuleScript' or v.ClassName == 'LocalScript' then table.insert(a, v) end end;return a
end)
AddElement('getloadedmodules', function()
	local a = {}for _, v in next, game:GetDescendants() do if v.ClassName == 'ModuleScript' then table.insert(a, v) end end;return a
end)
AddElement('getcallingscript', function()
	local Source = debug.info(1, 's')
	for i, v in next, game:GetDescendants() do if v:GetFullName() == Source then return v end end
end, {'get_calling_script'})
AddElement('isrbxactive', function()
	return RBXActive
end, {'isgameactive'})
AddElement('newcclosure', newcclosure) -- Credits to empereans and myworld for this
AddElement('getthreadidentity', getthreadidentity, {'getthreadcontext', 'getidentity'})
AddElement('getrunningscripts', function() -- Purposely made ugly code to make it a 1 liner.
	local a={}for _,v in next,game:GetDescendants()do if v.ClassName=='LocalScript'or v.ClassName=='ModuleScript'then table.insert(a,v)end;end;return a
end)
AddElement('getexecutorname', function()
	return 'MoreUNC', '2.0.0'
end, {'identifyexecutor'})
AddElement('cleardrawcache', function()
	for _, m in next, DrawingCache do m:Remove() end
end)

-- // File System:
local Files = {}
local function startswith(a, b)
	return a:sub(1, #b) == b
end
local function endswith(hello, lo) 
	return hello:sub(#hello - #lo + 1, #hello) == lo
end
AddElement('writefile', function(path, content)
	local Path = path:split('/')
	local CurrentPath = {}
	for i = 1, #Path do
		local a = Path[i]
		CurrentPath[i] = a
		if not Files[a] and i ~= #Path then
			Files[table.concat(CurrentPath, '/')] = {}
			Files[table.concat(CurrentPath, '/') .. '/'] = Files[table.concat(CurrentPath, '/')]
		elseif i == #Path then
			Files[table.concat(CurrentPath, '/')] = tostring(content)
		end
	end
end)
AddElement('makefolder', function(path)
	Files[path] = {}
	Files[path .. '/'] = Files[path]
end)
AddElement('isfolder', function(path)
	return type(Files[path]) == 'table'
end)
AddElement('isfile', function(path)
	return type(Files[path]) == 'string'
end)
AddElement('readfile', function(path)
	return Files[path]
end)
AddElement('appendfile', function(path, text2)
	writefile(path, readfile(path) .. text2)
end)
AddElement('loadfile', function(path)
	local content = readfile(path)
	if not content then error('File \'' .. tostring(path) .. '\' does not exist.') return '' end
	local s, func = pcall(function()
		return loadstring(content)
	end)
	return func, not s and func or nil
end)
AddElement('delfolder', function(path)
	local f = Files[path]
	if type(f) == 'table' then Files[path] = nil end
end)
AddElement('delfile', function(path)
	local f = Files[path]
	if type(f) == 'string' then Files[path] = nil end
end)
AddElement('listfiles', function(path)
	if not path or path == '' then
		local Files = {}
		for i, v in pairs(Files) do
			if #i:split('/') == 1 then table.insert(Files, i) end
		end
		return Files
	end
	if type(Files[path]) ~= 'table' then return error(path .. ' is not a folder.') end
	local Files_2 = {}
	for i, v in pairs(Files) do
		if startswith(i, path .. '/') and not endswith(i, '/') and i ~= path and #i:split('/') == (#path:split('/') + 1) then table.insert(Files_2, i) end
	end
	return Files_2
end)
AddElement('checkcaller', function()
	local info = debug.info(getgenv, 'slnaf')
	return debug.info(1, 'slnaf')==info
end)
AddElement('clonefunction', function(f)
	return function(...) -- Probably a bad way to do this...
		return f(...)
	end
end, {'newlclosure'})
AddElement('getscriptclosure', function(module)
	assert(typeof(module) ~= 'Instance', 'Argument #1 to \'getscriptclosure\' must be an Instance.')
	return function() return require(module) end
end, {'getscriptfunction'})
AddElement('getgenv', function()
	return getfenv(0)
end)
if vim then
	AddElement('mouse1click', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 0, true, game, false)
		task.wait()
		vim:SendMouseButtonEvent(x, y, 0, false, game, false)
	end)

	AddElement('mouse2click', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 1, true, game, false)
		task.wait()
		vim:SendMouseButtonEvent(x, y, 1, false, game, false)
	end)

	AddElement('mouse1press', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 0, true, game, false)
	end)

	AddElement('mouse1release', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 0, false, game, false)
	end)

	AddElement('mouse2press', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 1, true, game, false)
	end)

	AddElement('mouse2release', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseButtonEvent(x, y, 1, false, game, false)
	end)

	AddElement('mousescroll', function(x, y, a)
		x = x or 0
		y = y or 0
		a = a and true or false
		vim:SendMouseWheelEvent(x, y, a, game)
	end)

	AddElement('keyclick', function(key)
		if typeof(key) == 'number' then
			if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
			vim:SendKeyEvent(true, keys[key], false, game)
			task.wait()
			vim:SendKeyEvent(false, keys[key], false, game)
		elseif typeof(key) == 'EnumItem' then
			vim:SendKeyEvent(true, key, false, game)
			task.wait()
			vim:SendKeyEvent(false, key, false, game)
		end
	end)

	AddElement('keypress', function(key)
		if typeof(key) == 'number' then
			if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
			vim:SendKeyEvent(true, keys[key], false, game)
		elseif typeof(key) == 'EnumItem' then
			vim:SendKeyEvent(true, key, false, game)
		end
	end)

	AddElement('keyrelease', function(key)
		if typeof(key) == 'number' then
			if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
			vim:SendKeyEvent(false, keys[key], false, game)
		elseif typeof(key) == 'EnumItem' then
			vim:SendKeyEvent(false, key, false, game)
		end
	end)

	AddElement('mousemoverel', function(relx, rely)
		local Pos = workspace.CurrentCamera.ViewportSize
		relx = relx or 0
		rely = rely or 0
		local x = Pos.X * relx
		local y = Pos.Y * rely
		vim:SendMouseMoveEvent(x, y, game)
	end)

	AddElement('mousemoveabs', function(x, y)
		x = x or 0
		y = y or 0
		vim:SendMouseMoveEvent(x, y, game)
	end)
	AddElement(
		"fireproximityprompt",
		function(ProximityPrompt)
			local Old, Text = game:GetService("UserInputService"):GetFocusedTextBox(), ""
			if Old then
				Text = Old.Text
				Old:ReleaseFocus()
			end
			local Properties = {"HoldDuration", "MaxActivationDistance", "Enabled", "RequiresLineOfSight"}
			local Values = {}
			for _, Property in next, Properties do
				Values[Property] = ProximityPrompt[Property]
			end
			-- * Change it's propreties so you can activate it from anywhere!
			ProximityPrompt.Enabled = true
			ProximityPrompt.RequiresLineOfSight = false
			ProximityPrompt.MaxActivationDistance = math.huge
			ProximityPrompt.HoldDuration = 0
			vim:SendKeyEvent(true, ProximityPrompt.KeyboardKeyCode, false, game)
			task.wait()
			vim:SendKeyEvent(false, ProximityPrompt.KeyboardKeyCode, false, game)
			for PropertyName, PropertyValue in next, Values do
				ProximityPrompt[PropertyName] = PropertyValue
			end
			if Old then
				Old:CaptureFocus()
				Old.Text = Text
			end
		end
	)
	AddElement('setclipboard', function(data)
		repeat task.wait() until ClipboardQueue:Current()[1] == data or ClipboardQueue:IsEmpty()
		ClipboardQueue:Queue(data)
		local old = game:GetService("UserInputService"):GetFocusedTextBox()
		local copy = ClipboardQueue:Current()[1]
		ClipboardBox:CaptureFocus()
		ClipboardBox.Text = copy

		local KeyCode = Enum.KeyCode
		local Keys = {KeyCode.RightControl, KeyCode.A}
		local Keys2 = {KeyCode.RightControl, KeyCode.C, KeyCode.V}

		for _, v in ipairs(Keys) do
			vim:SendKeyEvent(true, v, false, game)
			task.wait()
		end
		for _, v in ipairs(Keys) do
			vim:SendKeyEvent(false, v, false, game)
			task.wait()
		end
		for _, v in ipairs(Keys2) do
			vim:SendKeyEvent(true, v, false, game)
			task.wait()
		end
		for _, v in ipairs(Keys2) do
			vim:SendKeyEvent(false, v, false, game)
			task.wait()
		end
		ClipboardBox.Text = ''
		if old then old:CaptureFocus() end
		task.wait(.18)
		ClipboardQueue:Update()
	end, {'toclipboard', 'writeclipboard', 'setrbxclipboard', 'syn.write_clipboard'})
else
	warn("Your executor is not high level enough to support input functions (Including setclipboard & fireproximityprompt)")
end
local Consoles = {}
AddElement('rconsolecreate', function()
	local cnsl = rconsole:init()
	table.insert(Consoles, cnsl)
	cnsl.Parent = gethui()
end, {'consolecreate'})
AddElement('rconsoledestroy', function()
	for i, v in next, Consoles do v:Destroy() end
end, {'consoledestroy'})
AddElement('rconsoleprint', function(msg)
	assert(type(msg) == 'string', 'Argument #1 to \'rconsoleprint\' must be a string, not ' .. type(msg))
	rconsole:addmessage(msg)
end, {'consoleprint'})
AddElement('rconsoleinput', function(text)
	assert(type(text) == 'string', 'Argument #1 to \'rconsoleinput\' must be a string, not ' .. type(text))
	return rconsole:addinput(text)
end, {'rconsoleinputasync', 'consoleinput'})
AddElement('rconsoleclear', function()
	local v = Consoles[#Consoles]
	if not v then return end 
	if v:FindFirstChild('MainFrame') and v.MainFrame:FindFirstChild('Messages') then
		for _, q in next, v.MainFrame:FindFirstChild('Messages'):GetChildren() do
			if q.ClassName ~= 'UIListLayout' then
				q:Destroy()
			end
		end
	end
end, {'consoleclear'})
AddElement("rconsolesettitle", function(title)
	assert(type(title) == 'string', 'Argument #1 to \'rconsoleinput\' must be a string, not ' .. type(title))
	local v = Consoles[#Consoles]
	if not v then return end 
	v:FindFirstChild("MainFrame"):FindFirstChild("TopBar"):FindFirstChild("Title").Text = title
end, {"rconsolename", "consolesettitle"})
AddElement('getscripthash', function(scr)
	assert(typeof(scr) == 'Instance', 'Argument #1 to \'getscripthash\' must be an Instance, not ' .. typeof(scr))
	assert(scr.ClassName ~= 'LocalScript' or scr.ClassName ~= 'Script', 'Argument #1 to \'getscripthash\' must be a LocalScript or Script')
	return scr:GetHash()
end)
AddElement('saveinstance', function() -- Not mine, But still wanted to add it
	local Params = {
		RepoURL = "https://raw.githubusercontent.com/luau/SynSaveInstance/main/",
		SSI = "saveinstance",
	}
	local synsaveinstance = loadstring(game:HttpGet(Params.RepoURL .. Params.SSI .. ".luau", true), Params.SSI)()
	local SaveOptions = {
		ReadMe = true,
		IsolatePlayers = true,
		FilePath = string.format("%d", tick())
	}
	synsaveinstance(SaveOptions)
end)

-- Finalize:
if not getgenv().MoreUNCV2 then
	AddEnviroment()
	getgenv().MoreUNCV2 = true
	syn.protect_gui(DrawingUI)
	syn.protect_gui(ClipboardUI)
end