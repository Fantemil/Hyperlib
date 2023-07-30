--[[
By plusgiant5
Some code taken from original Replayability so credit to dong too


Tasability V1.2
Added custom JSON Encoder
Encoding and decoding can no longer freeze the game permanently (unless you set MinimumJSONFPS to math.huge)
You can click on the PlaceId label to copy PlaceId
Bypassed some anti exploits
Added rejoin and invite commands
Command names are no longer case sensitive
A lot of small updates I forgot



AHKConnection is required to do mouse scroll inputs

Get AHKConnection here: https://github.com/plusgiant5/Libraries/raw/d96e61f24d2439f0f9405087054f169e5a50e1c4/AHKConnection/AHKConnection.exe
If you dont trust the exe, compile it yourself: https://raw.githubusercontent.com/plusgiant5/Libraries/main/AHKConnection/AHKConnection.ahk

AHKConnection does not work well unless compiled
]]

-- Config
local PlaybackInputs = true -- Sets if you want replays to playback your inputs when playing them (AHK connection is required for mouse scroll playback)
local PlaybackMouseLocation = false -- Sets if you want replays to move your mouse when playing them (glitchy when loading checkpoints)
local RoundDigits = 3 -- Rounds all numbers when writing, to greatly decrease file size (set to 50 to disable rounding)
local ReplayStartTime = 3 -- Number of seconds to wait before starting to read the replay
local FrameBacktrackCount = 500 -- Number of frames to backtrack when frozen to see which keys are currently pressed. Increase as much as your computer can handle
local MinimumJSONFPS = 1/10 -- Lowest you want your FPS to go while encoding/decoding (higher = faster encoding/decoding, lower = better fps) 1/30: 30 fps, 1/60: 60 fps\
local BypassAntiExploit = false -- If this is true games with anti cheat (like beans) will not kick you, but there is a chance animations will be broken


-- Advanced config

-- Inputs that will not be recorded
local InputBlacklist = {
	["R"] = true;
	["T"] = true;
	["F"] = true;
	["G"] = true;
	["E"] = true;
}

-- Color codes for the color code frame
local ColorCodes = {
	WaitingForInput = Color3.new(1,1,0);
	Recording = Color3.new(1,0,0);
	Reading = Color3.new(0,0,5,1);
	Idle = Color3.new(1,1,1);
	Frozen = Color3.new(0,1,1);
	
	None = Color3.new(0,0,0);
}

-- Data on Roblox's cursors
local Cursors = {
	["ArrowFarCursor"] = {
		Icon = "rbxasset://textures/Cursors/KeyboardMouse/ArrowFarCursor.png";
		Size = UDim2.fromOffset(64,64);
		Offset = Vector2.new(-32,4);
	};
	["MouseLockedCursor"] = {
		Icon = "rbxasset://textures/MouseLockedCursor.png";
		Size = UDim2.fromOffset(32,32);
		Offset = Vector2.new(-16,20);
	};
}

-- End of config










-- Constants
local Version = "V1.2"
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local random = math.random
local min = math.min
local max = math.max
local floor = math.floor
local ceil = math.ceil
local ReplayFileBeginning = "{\"Replay\":"
local ReplayFileEnding = "}"
local PlayerModule = Player.PlayerScripts:WaitForChild("PlayerModule")
local ShiftLockBoundKeys = PlayerModule:WaitForChild("CameraModule"):WaitForChild("MouseLockController"):WaitForChild("BoundKeys")
local ShiftLockEnabled = false
local GuiInset = GuiService:GetGuiInset()

-- Variables
local ExecutionTick = tick()
local PlaceId = game.PlaceId
-- These will be set later --
local Character = nil
local Humanoid = nil
local RootPart = nil
local DefaultGravity = nil
local DefaultJumpPower = nil
local DefaultWalkSpeed = nil
local Resolution = nil
local ConsoleMessage = print
-----------------------------
local Reading = false
local Writing = false
local Saving = false
local AnimateDisabled = false
local Checkpoints = {}
local RenderSteppedConnections = {}
local SteppedConnections = {}
local FolderPath = "Tasability/"..tostring(PlaceId)
local ReplayPath = FolderPath.."/Replay.json"
local AHKConnectionFolderPath = "Replayability+_AHK"
local AHKConnectionRequestPath = "Replayability+_AHK/Request"
local ReplayTable = {} -- Should always be used instead of the json string except when encoding or decoding
local RecordingTable = {} -- List of frames that will be added to ReplayTable if recording is saved
local ReplayTableIndex = 0 -- The index in ReplayTable that will be read from
local AnimationQueue = {} -- Functions that were called by the animation script (clear every frame)
local RunSpeed = 0 -- Set in the onRunning function, reset to 0 every frame (AnimationId 2)
local ClimbSpeed = 0 -- Set in the onClimbing function, reset to 0 every frame (AnimationId 4)
local HumanoidStateQueue = {} -- States that were activated on the humanoid (clear every frame)
local InputBeganQueue = {} -- Inputs that have just began (for recording inputs) (clear every frame)
local InputEndedQueue = {} -- Inputs that have just ended (for recording inputs) (clear every frame)
local Cursor = Instance.new("ImageLabel") -- Fake cursor so the icon doesnt change all the time
local CursorIcon = nil -- Icon of the cursor
local CursorSize = nil -- Size of the cursor
local CursorOffset = nil -- Offset of the cursor from UserInputService:GetMouseLocation()
local Dead = false -- If the player is dead this is true
local CameraCFrame = workspace.CurrentCamera.CFrame -- Used when reading so that nothing else can change the camera's CFrame
local Pressed = {} -- Current keys that are pressed
local IgnoreGameProcessed = false -- To ignore GameProcessed in InputBegan, InputChanged, InputEnded

-- Tasability update
local Frozen = false
local FreezeFrame = 1 -- Frame to render while frozen
local SeekDirection = 0 -- Stays 0 normally, -1 when going backwards while frozen, 1 when going fowards
local SeekDirectionMultiplier = 1 -- To go faster or slower when seeking with R and T

-- Converting inputs
-- To add to this table, use https://docs.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
local InputCodes = {
	["A"] = 0x41;
	["B"] = 0x42;
	["C"] = 0x43;
	["D"] = 0x44;
	["E"] = 0x45;
	["F"] = 0x46;
	["G"] = 0x47;
	["H"] = 0x48;
	["I"] = 0x49;
	["J"] = 0x4A;
	["K"] = 0x4B;
	["L"] = 0x4C;
	["M"] = 0x4D;
	["N"] = 0x4E;
	["O"] = 0x4F;
	["P"] = 0x50;
	["Q"] = 0x51;
	["R"] = 0x52;
	["S"] = 0x53;
	["T"] = 0x54;
	["U"] = 0x55;
	["V"] = 0x56;
	["W"] = 0x57;
	["X"] = 0x58;
	["Y"] = 0x59;
	["Z"] = 0x5A;
	["Space"] = 0x20;
	["LeftShift"] = 0x10;
	["RightShift"] = 0x10;
}

-- Compatibility
mouse1press = mouse1press or mouse1down
mouse2press = mouse2press or mouse2down
mouse1release = mouse1release or mouse1up
mouse2release = mouse2release or mouse2up
keypress = keypress or keydown
keyrelease = keyrelease or keyup

-- Variables used in Animate script
local pose = "Standing" -- The pose that is used in the move function
local currentAnimSpeed = 1.0 -- Animation speed


-- GUI Objects for external use
local MainFrame = Instance.new("Frame")
local ConsoleFrame = Instance.new("Frame")
local ConsoleMessageLabel = Instance.new("TextLabel")
local ConsoleListLayout = Instance.new("UIListLayout")
local SaveToFileButton = Instance.new("TextButton")
local IdleButton = Instance.new("TextButton")
local IgnoreGameProcessedButton = Instance.new("TextButton")
local CurrentPlaceIdButton = Instance.new("TextButton")
local ReadButton = Instance.new("TextButton")
local SaveFileInfoLabel = Instance.new("TextLabel")
local RecordedFramesLabel = Instance.new("TextLabel")
local PressedKeysLabel = Instance.new("TextLabel")
local WritingPressedKeysLabel = Instance.new("TextLabel")
local ConnectedLabel = Instance.new("TextLabel")
local ColorCodeFrame = Instance.new("TextLabel")
local CommandBar = Instance.new("TextBox")

-- Other
local GUIParent
if gethui then
	while not gethui() do -- gethui returns nil if called early
		RunService.RenderStepped:Wait()
	end
	GUIParent = gethui()
else
	if ({pcall(function() return #game.CoreGui:GetChildren() end)})[1] then
		GUIParent = game.CoreGui
	else
		GUIParent = Player:WaitForChild("PlayerGui")
	end
end
local json
do -- Overwriting JSON
	json = (function()
																			--
																			-- json.lua
																			--
																			-- Copyright (c) 2020 rxi
																			--
																			-- Permission is hereby granted, free of charge, to any person obtaining a copy of
																			-- this software and associated documentation files (the "Software"), to deal in
																			-- the Software without restriction, including without limitation the rights to
																			-- use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
																			-- of the Software, and to permit persons to whom the Software is furnished to do
																			-- so, subject to the following conditions:
																			--
																			-- The above copyright notice and this permission notice shall be included in all
																			-- copies or substantial portions of the Software.
																			--
																			-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
																			-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
																			-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
																			-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
																			-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
																			-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
																			-- SOFTWARE.
																			--

																			local json = { _version = "0.1.2" }
																			
																			local t = tick()
																			local currentstr
																			local lasti
																			local function checkwait(i)
																				if tick() - t > MinimumJSONFPS then
																					lasti = lasti or i
																					if i >= lasti then
																						local Type = (type(currentstr) == "table" and "En") or (type(currentstr) == "string" and "De")
																						if Type then
																							ConsoleMessage(Type.."coding... ("..tostring(i).."/"..tostring(#currentstr)..")")
																						end
																						game:GetService("RunService").Stepped:Wait()
																						t = tick()
																						lasti = i
																					end
																				end
																			end

																			-------------------------------------------------------------------------------
																			-- Encode
																			-------------------------------------------------------------------------------

																			

																			local encode

																			local escape_char_map = {
																				[ "\\" ] = "\\",
																				[ "\"" ] = "\"",
																				[ "\b" ] = "b",
																				[ "\f" ] = "f",
																				[ "\n" ] = "n",
																				[ "\r" ] = "r",
																				[ "\t" ] = "t",
																			}

																			local escape_char_map_inv = { [ "/" ] = "/" }
																			for k, v in pairs(escape_char_map) do
																				escape_char_map_inv[v] = k
																			end


																			local function escape_char(c)
																				return "\\" .. (escape_char_map[c] or string.format("u%04x", c:byte()))
																			end


																			local function encode_nil(val)
																				return "null"
																			end


																			local function encode_table(val, stack)
																				local res = {}
																				stack = stack or {}

																				-- Circular reference?
																				if stack[val] then error("circular reference") end

																				stack[val] = true

																				if rawget(val, 1) ~= nil or next(val) == nil then
																					-- Treat as array -- check keys are valid and it is not sparse
																					local n = 0
																					for k in pairs(val) do
																						if type(k) ~= "number" then
																							error("invalid table: mixed or invalid key types")
																						end
																						n = n + 1
																					end
																					if n ~= #val then
																						error("invalid table: sparse array")
																					end
																					-- Encode
																					for i, v in ipairs(val) do
																						checkwait(i)
																						table.insert(res, encode(v, stack))
																					end
																					stack[val] = nil
																					
																					return "[" .. table.concat(res, ",") .. "]"

																				else
																					-- Treat as an object
																					local i = 0
																					for k, v in pairs(val) do
																						i = i + 1
																						if type(k) ~= "string" then
																							error("invalid table: mixed or invalid key types")
																						end
																						checkwait(i)
																						table.insert(res, encode(k, stack) .. ":" .. encode(v, stack))
																					end
																					stack[val] = nil
																					
																					return "{" .. table.concat(res, ",") .. "}"
																				end
																			end


																			local function encode_string(val)
																				return '"' .. val:gsub('[%z\1-\31\\"]', escape_char) .. '"'
																			end


																			local function encode_number(val)
																				-- Check for NaN, -inf and inf
																				if val ~= val or val <= -math.huge or val >= math.huge then
																					error("unexpected number value '" .. tostring(val) .. "'")
																				end
																				return string.format("%.14g", val)
																			end


																			local type_func_map = {
																				[ "nil"     ] = encode_nil,
																				[ "table"   ] = encode_table,
																				[ "string"  ] = encode_string,
																				[ "number"  ] = encode_number,
																				[ "boolean" ] = tostring,
																			}


																			encode = function(val, stack)
																				local t = type(val)
																				local f = type_func_map[t]
																				if f then
																					t = tick()
																					return f(val, stack)
																				end
																				error("unexpected type '" .. t .. "'")
																			end


																			function json.encode(val)
																				currentstr = val
																				lasti = nil
																				return ( encode(val) )
																			end


																			-------------------------------------------------------------------------------
																			-- Decode
																			-------------------------------------------------------------------------------

																			local parse

																			local function create_set(...)
																				local res = {}
																				for i = 1, select("#", ...) do
																					res[ select(i, ...) ] = true
																				end
																				return res
																			end

																			local space_chars   = create_set(" ", "\t", "\r", "\n")
																			local delim_chars   = create_set(" ", "\t", "\r", "\n", "]", "}", ",")
																			local escape_chars  = create_set("\\", "/", '"', "b", "f", "n", "r", "t", "u")
																			local literals      = create_set("true", "false", "null")

																			local literal_map = {
																				[ "true"  ] = true,
																				[ "false" ] = false,
																				[ "null"  ] = nil,
																			}


																			local function next_char(str, idx, set, negate)
																				for i = idx, #str do
																					if set[str:sub(i, i)] ~= negate then
																						return i
																					end
																				end
																				return #str + 1
																			end


																			local function decode_error(str, idx, msg)
																				local line_count = 1
																				local col_count = 1
																				for i = 1, idx - 1 do
																					col_count = col_count + 1
																					if str:sub(i, i) == "\n" then
																						line_count = line_count + 1
																						col_count = 1
																					end
																				end
																				error( string.format("%s at line %d col %d", msg, line_count, col_count) )
																			end



																			local function codepoint_to_utf8(n)
																				-- http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=iws-appendixa
																				local f = math.floor
																				if n <= 0x7f then
																					return string.char(n)
																				elseif n <= 0x7ff then
																					return string.char(f(n / 64) + 192, n % 64 + 128)
																				elseif n <= 0xffff then
																					return string.char(f(n / 4096) + 224, f(n % 4096 / 64) + 128, n % 64 + 128)
																				elseif n <= 0x10ffff then
																					return string.char(f(n / 262144) + 240, f(n % 262144 / 4096) + 128,
																						f(n % 4096 / 64) + 128, n % 64 + 128)
																				end
																				error( string.format("invalid unicode codepoint '%x'", n) )
																			end


																			local function parse_unicode_escape(s)
																				local n1 = tonumber( s:sub(1, 4),  16 )
																				local n2 = tonumber( s:sub(7, 10), 16 )
																				-- Surrogate pair?
																				if n2 then
																					return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
																				else
																					return codepoint_to_utf8(n1)
																				end
																			end


																			local function parse_string(str, i)
																				local res = ""
																				local j = i + 1
																				local k = j

																				while j <= #str do
																					local x = str:byte(j)

																					if x < 32 then
																						decode_error(str, j, "control character in string")

																					elseif x == 92 then -- `\`: Escape
																						res = res .. str:sub(k, j - 1)
																						j = j + 1
																						local c = str:sub(j, j)
																						if c == "u" then
																							local hex = str:match("^[dD][89aAbB]%x%x\\u%x%x%x%x", j + 1)
																								or str:match("^%x%x%x%x", j + 1)
																								or decode_error(str, j - 1, "invalid unicode escape in string")
																							res = res .. parse_unicode_escape(hex)
																							j = j + #hex
																						else
																							if not escape_chars[c] then
																								decode_error(str, j - 1, "invalid escape char '" .. c .. "' in string")
																							end
																							res = res .. escape_char_map_inv[c]
																						end
																						k = j + 1

																					elseif x == 34 then -- `"`: End of string
																						res = res .. str:sub(k, j - 1)
																						return res, j + 1
																					end

																					j = j + 1
																					checkwait(i)
																				end

																				decode_error(str, i, "expected closing quote for string")
																			end


																			local function parse_number(str, i)
																				local x = next_char(str, i, delim_chars)
																				local s = str:sub(i, x - 1)
																				local n = tonumber(s)
																				if not n then
																					decode_error(str, i, "invalid number '" .. s .. "'")
																				end
																				checkwait(i)
																				return n, x
																			end


																			local function parse_literal(str, i)
																				local x = next_char(str, i, delim_chars)
																				local word = str:sub(i, x - 1)
																				if not literals[word] then
																					decode_error(str, i, "invalid literal '" .. word .. "'")
																				end
																				checkwait(i)
																				return literal_map[word], x
																			end


																			local function parse_array(str, i)
																				local res = {}
																				local n = 1
																				i = i + 1
																				while 1 do
																					local x
																					i = next_char(str, i, space_chars, true)
																					-- Empty / end of array?
																					if str:sub(i, i) == "]" then
																						i = i + 1
																						break
																					end
																					-- Read token
																					x, i = parse(str, i)
																					res[n] = x
																					n = n + 1
																					-- Next token
																					i = next_char(str, i, space_chars, true)
																					local chr = str:sub(i, i)
																					i = i + 1
																					checkwait(i)
																					if chr == "]" then break end
																					if chr ~= "," then decode_error(str, i, "expected ']' or ','") end
																				end
																				return res, i
																			end


																			local function parse_object(str, i)
																				local res = {}
																				i = i + 1
																				while 1 do
																					local key, val
																					i = next_char(str, i, space_chars, true)
																					-- Empty / end of object?
																					if str:sub(i, i) == "}" then
																						i = i + 1
																						break
																					end
																					-- Read key
																					if str:sub(i, i) ~= '"' then
																						decode_error(str, i, "expected string for key")
																					end
																					key, i = parse(str, i)
																					-- Read ':' delimiter
																					i = next_char(str, i, space_chars, true)
																					if str:sub(i, i) ~= ":" then
																						decode_error(str, i, "expected ':' after key")
																					end
																					i = next_char(str, i + 1, space_chars, true)
																					-- Read value
																					val, i = parse(str, i)
																					-- Set
																					res[key] = val
																					-- Next token
																					i = next_char(str, i, space_chars, true)
																					local chr = str:sub(i, i)
																					i = i + 1
																					--print(tick() - t, 1/60)
																					checkwait(i)
																					if chr == "}" then break end
																					if chr ~= "," then decode_error(str, i, "expected '}' or ','") end
																				end
																				return res, i
																			end


																			local char_func_map = {
																				[ '"' ] = parse_string,
																				[ "0" ] = parse_number,
																				[ "1" ] = parse_number,
																				[ "2" ] = parse_number,
																				[ "3" ] = parse_number,
																				[ "4" ] = parse_number,
																				[ "5" ] = parse_number,
																				[ "6" ] = parse_number,
																				[ "7" ] = parse_number,
																				[ "8" ] = parse_number,
																				[ "9" ] = parse_number,
																				[ "-" ] = parse_number,
																				[ "t" ] = parse_literal,
																				[ "f" ] = parse_literal,
																				[ "n" ] = parse_literal,
																				[ "[" ] = parse_array,
																				[ "{" ] = parse_object,
																			}


																			parse = function(str, idx)
																				local chr = str:sub(idx, idx)
																				local f = char_func_map[chr]
																				if f then
																					return f(str, idx)
																				end
																				decode_error(str, idx, "unexpected character '" .. chr .. "'")
																			end


																			function json.decode(str)
																				t = tick()
																				currentstr = str
																				lasti = nil
																				if type(str) ~= "string" then
																					error("expected argument of type string, got " .. type(str))
																				end
																				local res, idx = parse(str, next_char(str, 1, space_chars, true))
																				idx = next_char(str, idx, space_chars, true)
																				if idx <= #str then
																					decode_error(str, idx, "trailing garbage")
																				end
																				return res
																			end


																			return json
	end)()
end

-- Functions
-- General Functions
local RandomString --RandomString() -> string
local RoundNumber -- RoundNumber(Number,Digits) -> number
local Vector3ToTable -- Vector3ToTable(Vector3) -> table
local TableToVector3 -- TableToVector3(Table) -> vector3
local CFrameToTable -- CFrameToTable(CFrame) -> table
local TableToCFrame -- TableToCFrame(Table) -> cframe
local RoundVector3 -- RoundVector3(Vector3,Digits) -> vector3
local RoundCFrame -- RoundCFrame(CFrame,Digits) -> cframe
local FindListIndex -- FindListIndex(Table,Search) -> number
local WaitForInput -- WaitForInput() -> nil
do
	RandomString = function()
		local str = ""
		for _ = 1,random(1,20) do
			local type = random(1,3)
			if type == 1 then
				str = str..string.char(random(97,122)) -- Lowercase
			elseif type == 2 then
				str = str..string.char(random(65,90)) -- Uppercase
			elseif type == 3 then
				str = str..string.char(random(48,57)) -- Numbers
			end
		end
		return str
	end
	RoundNumber = function(Number,Digits)
		local Mult = 10^max(tonumber(Digits) or 0,0)
		return floor(Number*Mult+0.5)/Mult
	end
	Vector3ToTable = function(V3)
		return {V3.X,V3.Y,V3.Z}
	end
	TableToVector3 = function(Table)
		return Vector3.new(unpack(Table))
	end
	Vector2ToTable = function(V2)
		return {V2.X,V2.Y}
	end
	TableToVector2 = function(Table)
		return Vector2.new(unpack(Table))
	end
	CFrameToTable = function(CF)
		return {CF:GetComponents()}
	end
	TableToCFrame = function(Table)
		return CFrame.new(unpack(Table))
	end
	RoundTable = function(Table,Digits)
		local RoundedTable = {}
		for Index,Number in pairs(Table) do
			RoundedTable[Index] = RoundNumber(Number,Digits)
		end
		return RoundedTable
	end
	FindListIndex = function(Table,Search)
		for Index,Value in pairs(Table) do
			if Value == Search then
				return Index
			end
		end
	end
	WaitForInput = function()
		local KeyPressed = Instance.new("BindableEvent")
		local InputBeganConnection
		InputBeganConnection = UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.Keyboard then
				RunService.RenderStepped:Wait()
				KeyPressed:Fire()
			end
		end)
		KeyPressed.Event:Wait()
		InputBeganConnection:Disconnect()
		KeyPressed:Destroy()
	end
end

-- Making GUI
local GUI -- Parenting the gui at the setup part of the script so the other guis show up on top
do
	GUI = Instance.new("ScreenGui")
	GUI.Name = RandomString()
	if syn then
		syn.protect_gui(GUI)
	end
	
	MainFrame.Size = UDim2.fromOffset(1000,300)
	MainFrame.Parent = GUI
	
	RecordedFramesLabel.Text = "0"
	RecordedFramesLabel.Size = UDim2.fromOffset(80,60)
	RecordedFramesLabel.Position = UDim2.fromOffset(0,0)
	RecordedFramesLabel.TextScaled = true
	RecordedFramesLabel.Parent = MainFrame
	
	ColorCodeFrame.Size = UDim2.fromOffset(140,60)
	ColorCodeFrame.Position = UDim2.fromOffset(80,240)
	ColorCodeFrame.TextScaled = true
	ColorCodeFrame.Parent = MainFrame
	
	SaveToFileButton.Text = "Save Recording to File [P]"
	SaveToFileButton.Size = UDim2.fromOffset(80,60)
	SaveToFileButton.Position = UDim2.fromOffset(0,60)
	SaveToFileButton.TextScaled = true
	SaveToFileButton.Parent = MainFrame
	
	IdleButton.Text = "Frozen to Idle [M]"
	IdleButton.Size = UDim2.fromOffset(80,60)
	IdleButton.Position = UDim2.fromOffset(0,120)
	IdleButton.TextScaled = true
	IdleButton.Parent = MainFrame
	
	IgnoreGameProcessedButton.Text = "Ignore GameProcessed"
	IgnoreGameProcessedButton.Size = UDim2.fromOffset(80,60)
	IgnoreGameProcessedButton.BackgroundColor3 = Color3.new(1,0.5,0.5)
	IgnoreGameProcessedButton.Position = UDim2.fromOffset(0,180)
	IgnoreGameProcessedButton.TextScaled = true
	IgnoreGameProcessedButton.Parent = MainFrame
	
	CurrentPlaceIdButton.Text = "PlaceId: "..tostring(PlaceId)
	CurrentPlaceIdButton.Size = UDim2.fromOffset(80,60)
	CurrentPlaceIdButton.Position = UDim2.fromOffset(0,240)
	CurrentPlaceIdButton.TextScaled = true
	CurrentPlaceIdButton.Parent = MainFrame
	
	ReadButton.Text = "Read Replay"
	ReadButton.Size = UDim2.fromOffset(80,60)
	ReadButton.Position = UDim2.fromOffset(80,0)
	ReadButton.TextScaled = true
	ReadButton.Parent = MainFrame
	
	SaveFileInfoLabel.Text = "E to freeze/unfreeze, R to go back in time, T to go fowards in time, F to go back one frame, G to go fowards one frame, L to abort replay, U to toggle UI, P to save recording to file (REMEMBER TO SAVE TO FILE)"
	SaveFileInfoLabel.Size = UDim2.fromOffset(140,180)
	SaveFileInfoLabel.Position = UDim2.fromOffset(80,60)
	SaveFileInfoLabel.TextScaled = true
	SaveFileInfoLabel.Parent = MainFrame
	
	WritingPressedKeysLabel.Size = UDim2.fromOffset(80,60)
	WritingPressedKeysLabel.Position = UDim2.fromOffset(220,240)
	WritingPressedKeysLabel.TextColor3 = Color3.new(0,0,0.5)
	WritingPressedKeysLabel.TextScaled = true
	WritingPressedKeysLabel.Text = "|"
	WritingPressedKeysLabel.Parent = MainFrame
	
	PressedKeysLabel.Size = UDim2.fromOffset(80,60)
	PressedKeysLabel.Position = UDim2.fromOffset(220,180)
	PressedKeysLabel.TextScaled = true
	PressedKeysLabel.Text = "|"
	PressedKeysLabel.Parent = MainFrame
	
	ConnectedLabel.Size = UDim2.fromOffset(80,60)
	ConnectedLabel.Position = UDim2.fromOffset(220,0)
	ConnectedLabel.TextScaled = true
	ConnectedLabel.Text = "AHK folder not found"
	ConnectedLabel.TextColor3 = Color3.new(0.8,0,0)
	ConnectedLabel.Parent = MainFrame
	
	ConsoleFrame.Size = UDim2.fromOffset(700,300)
	ConsoleFrame.Position = UDim2.fromOffset(300,0)
	ConsoleFrame.BackgroundColor3 = Color3.fromRGB(0,0,0)
	ConsoleFrame.Parent = MainFrame
	
	CommandBar.Size = UDim2.fromOffset(700,15)
	CommandBar.Position = UDim2.fromOffset(300,300)
	CommandBar.BackgroundColor3 = Color3.new(0,0,0)
	CommandBar.TextColor3 = Color3.new(1,1,1)
	CommandBar.Text = ""
	CommandBar.TextXAlignment = Enum.TextXAlignment.Left
	CommandBar.BorderSizePixel = 0
	CommandBar.Parent = MainFrame
	
	ConsoleListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ConsoleListLayout.FillDirection = Enum.FillDirection.Vertical
	ConsoleListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
	ConsoleListLayout.Parent = ConsoleFrame
end

-- GUI Functions
local Dragify -- Dragify(Frame) -> nil
--local ConsoleMessage -- ConsoleMessage(...) -> nil
local SetColorCodeFrame -- SetColorCodeFrame(Name) -> nil
local GetColorCodeFrame -- GetColorCodeFrame() -> string
do
	ConsoleMessage = function(...)
		local Args = {}
		local Children = ConsoleFrame:GetChildren()
		do -- Remove oldest message if console messages hit the top
			if #Children > 15 then
				local LowestLayoutOrder = {
					Label = nil;
					LayoutOrder = math.huge;
				}
				for _,v in pairs(Children) do
					if v:IsA("TextLabel") then
						if v.LayoutOrder < LowestLayoutOrder.LayoutOrder then
							LowestLayoutOrder.Label = v
							LowestLayoutOrder.LayoutOrder = v.LayoutOrder
						end
					end
				end
				if LowestLayoutOrder.Label then
					LowestLayoutOrder.Label:Destroy()
				end
				Children = ConsoleFrame:GetChildren()
			end
		end
		do -- Convert args to string
			for Index,Value in pairs({...}) do
				Args[Index] = tostring(Value)
			end
		end
		local Message = table.concat(Args," ")
		local Label = ConsoleMessageLabel:Clone()
		Label.Size = UDim2.fromOffset(700,20)
		Label.TextSize = 14
		Label.Font = Enum.Font.Code
		Label.BackgroundTransparency = 1
		Label.TextColor3 = Color3.fromRGB(255,255,255)
		Label.TextXAlignment = Enum.TextXAlignment.Left
		Label.Text = " "..Message
		Label.LayoutOrder = -999999999+#Children
		Label.Parent = ConsoleFrame
	end
	
	ConsoleMessage("Tasability loading...")
	
	Dragify = function(Frame)
		local dragToggle,dragStart,dragInput,dragPos,startPos
		local dragSpeed = 0.50
		local function updateInput(input)
			local Delta = input.Position - dragStart
			Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UserInputService:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	SetColorCodeFrame = function(Name)
		ColorCodeFrame.BackgroundColor3 = ColorCodes[Name] or ColorCodes.None
		ColorCodeFrame.Text = ColorCodes[Name] and Name or "None"
	end
	GetColorCodeFrame = function()
		return ColorCodeFrame.Text
	end
end

do -- Anticheat bypasses
	do -- standard anti kick
		--// Variables
		
		local Players = game:GetService("Players")
		local OldNameCall = nil

		--// Anti Kick Hook
		local plr = game.Players.LocalPlayer
		OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
			local NameCallMethod = getnamecallmethod()

			if not checkcaller() and Self == plr and NameCallMethod == "Kick" then
				if getgenv().SendNotifications == true then
					game:GetService("StarterGui"):SetCore("SendNotification", {
						Title = "Almost Kicked",
						Text = tostring(({...})[1]),
						Icon = "rbxassetid://6238540373",
						Duration = 3,
					})
				end
				
				return nil
			end
			
			return OldNameCall(Self, ...)
		end)
	end
	pcall(function() -- Practice anticheat bypass
		game.ReplicatedStorage.Remotes.Send:Destroy()
	end)
	pcall(function() -- Slad anticheat bypass
		local sendremote = game.ReplicatedStorage.DefaultChatSystemChatEvents.ChannelNameColorUpdated
		local oldspawn
		oldspawn = hookfunction(getrenv().spawn, function(...)
			if not checkcaller() and (tostring(getcallingscript()) == "Animate" or tostring(getcallingscript()) == "RbxAnimateScript") then
				return oldspawn(function()
					
				end)
			end
			return oldspawn(...)
		end)
		sendremote:Destroy()
	end)
end

-- Animation Functions
local StopAllAnimations -- StopAllAnimations() -> nil
local Reanimate -- Reanimate(Character) -> nil

local GetAnimationFunctionFromId -- GetAnimationFunctionFromId(Id) -> function
local onDied -- onDied() -> nil
local onRunning -- onRunning(Speed) -> nil
local onJumping -- onJumping() -> nil
local onClimbing -- onClimbing(Speed) -> nil
local onGettingUp -- onGettingUp() -> nil
local onFreeFall -- onFreeFall() -> nil
local onFallingDown -- onFallingDown() -> nil
local onSeated -- onSeated() -> nil
local onPlatformStanding -- onPlatformStanding() -> nil
local onSwimming -- onSwimming() -> nil

local PlayAnimation -- PlayAnimation() -> nil
local setAnimationSpeed -- setAnimationSpeed() -> nil
do
	StopAllAnimations = function()
		for _,v in pairs(Humanoid:GetPlayingAnimationTracks()) do 
			v:Stop()
		end
	end
	GetAnimationFunctionFromId = function(Id)
		return ({
			[1] = OnDied;
			[2] = onRunning;
			[3] = onJumping;
			[4] = onClimbing;
			[5] = onGettingUp;
			[6] = onFreeFall;
			[7] = onFallingDown;
			[8] = onSeated;
			[9] = onPlatformStanding;
			[10] = onSwimming;
		})[Id]
	end
	Reanimate = function(Character)
		if Character:WaitForChild("Animate",3) then
			for _, Animate in ipairs(Character:GetDescendants()) do
				if Animate:IsA("LocalScript") and Animate.Name == "Animate" then
					for _,Connection in pairs(getconnections(Animate.Changed)) do
						Connection:Disconnect()
					end
					if BypassAntiExploit then
						Animate.Disabled = true
						if setparentinternal then
							setparentinternal(Animate, game.Lighting)
						else
							ConsoleMessage("Your exploit does not support setparentinternal, expect animation glitches")
						end
					else
						Animate:Destroy()
					end
				end
			end
		else
			ConsoleMessage("[ERROR] Animate script could not be found, you probably executed twice")
			error("Animate script could not be found, you probably executed twice")
		end
		StopAllAnimations()
		do -- Animate script
								local Figure = Character
								local Torso = Figure:WaitForChild("Torso")
								local RightShoulder = Torso:WaitForChild("Right Shoulder")
								local LeftShoulder = Torso:WaitForChild("Left Shoulder")
								local RightHip = Torso:WaitForChild("Right Hip")
								local LeftHip = Torso:WaitForChild("Left Hip")
								local Neck = Torso:WaitForChild("Neck")
								local Humanoid = Figure:WaitForChild("Humanoid")

								local currentAnim = ""
								local currentAnimInstance = nil
								local currentAnimTrack = nil
								local currentAnimKeyframeHandler = nil
								--local currentAnimSpeed = 1.0
								local animTable = {}
								local animNames = { 
									idle = 	{	
												{ id = "http://www.roblox.com/asset/?id=180435571", weight = 8 },
												{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
											},
									walk = 	{ 	
												{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 } 
											}, 
									run = 	{
												{ id = "run.xml", weight = 10 } 
											}, 
									jump = 	{
												{ id = "http://www.roblox.com/asset/?id=125750702", weight = 12 } 
											}, 
									fall = 	{
												{ id = "http://www.roblox.com/asset/?id=180436148", weight = 9 } 
											}, 
									climb = {
												{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 } 
											}, 
									sit = 	{
												{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
											},	
									toolnone = {
												{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
											},
									toolslash = {
												{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
								--				{ id = "slash.xml", weight = 10 } 
											},
									toollunge = {
												{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
											},
									wave = {
												{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
											},
									point = {
												{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
											},
									dance1 = {
												{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
											},
									dance2 = {
												{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
											},
									dance3 = {
												{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
												{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
											},
									laugh = {
												{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
											},
									cheer = {
												{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
											},
								}
								local dances = {"dance1", "dance2", "dance3"}

								-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
								local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

								function configureAnimationSet(name, fileList)
									if (animTable[name] ~= nil) then
										for _, connection in pairs(animTable[name].connections) do
											connection:disconnect()
										end
									end
									animTable[name] = {}
									animTable[name].count = 0
									animTable[name].totalWeight = 0	
									animTable[name].connections = {}

									-- check for config values

									-- fallback to defaults
									if (animTable[name].count <= 0) then
										for idx, anim in pairs(fileList) do
											animTable[name][idx] = {}
											animTable[name][idx].anim = Instance.new("Animation")
											animTable[name][idx].anim.Name = name
											animTable[name][idx].anim.AnimationId = anim.id
											animTable[name][idx].weight = anim.weight
											animTable[name].count = animTable[name].count + 1
											animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
								--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
										end
									end
								end

								-- Setup animation objects

								-- Clear any existing animation tracks
								-- Fixes issue with characters that are moved in and out of the Workspace accumulating tracks
								local animator = Humanoid and Humanoid:FindFirstChildOfClass("Animator") or nil
								if animator then
									local animTracks = animator:GetPlayingAnimationTracks()
									for i,track in ipairs(animTracks) do
										track:Stop(0)
										track:Destroy()
									end
								end


								for name, fileList in pairs(animNames) do 
									configureAnimationSet(name, fileList)
								end	

								-- ANIMATION

								-- declarations
								local toolAnim = "None"
								local toolAnimTime = 0

								local jumpAnimTime = 0
								local jumpAnimDuration = 0.3

								local toolTransitionTime = 0.1
								local fallTransitionTime = 0.3
								local jumpMaxLimbVelocity = 0.75

								-- functions

								function stopAllAnimations()
									local oldAnim = currentAnim

									-- return to idle if finishing an emote
									if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
										oldAnim = "idle"
									end

									currentAnim = ""
									currentAnimInstance = nil
									if (currentAnimKeyframeHandler ~= nil) then
										currentAnimKeyframeHandler:disconnect()
									end

									if (currentAnimTrack ~= nil) then
										currentAnimTrack:Stop()
										currentAnimTrack:Destroy()
										currentAnimTrack = nil
									end
									return oldAnim
								end

								setAnimationSpeed = function(speed)
									if speed ~= currentAnimSpeed then
										currentAnimSpeed = speed
										currentAnimTrack:AdjustSpeed(currentAnimSpeed)
									end
								end

								function keyFrameReachedFunc(frameName)
									if (frameName == "End") then

										local repeatAnim = currentAnim
										-- return to idle if finishing an emote
										if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
											repeatAnim = "idle"
										end
										
										local animSpeed = currentAnimSpeed
										playAnimation(repeatAnim, 0.0, Humanoid)
										setAnimationSpeed(animSpeed)
									end
								end

								-- Preload animations
								playAnimation = function(animName, transitionTime, humanoid, bypassAnimateDisabled) 
									--print(animName, transitionTime, humanoid, bypassAnimateDisabled)
									pcall(function()
									if AnimateDisabled and not bypassAnimateDisabled then
										return
									end
									
									table.insert(AnimationQueue,{animName,transitionTime})
									
									local roll = math.random(1, animTable[animName].totalWeight) 
									local origRoll = roll
									local idx = 1
									while (roll > animTable[animName][idx].weight) do
										roll = roll - animTable[animName][idx].weight
										idx = idx + 1
									end
								--		print(animName .. " " .. idx .. " [" .. origRoll .. "]")
									local anim = animTable[animName][idx].anim

									-- switch animation		
									if (anim ~= currentAnimInstance) then
										
										if (currentAnimTrack ~= nil) then
											currentAnimTrack:Stop(transitionTime)
											currentAnimTrack:Destroy()
										end

										currentAnimSpeed = 1.0
									
										-- load it to the humanoid; get AnimationTrack
										currentAnimTrack = humanoid:LoadAnimation(anim)
										currentAnimTrack.Priority = Enum.AnimationPriority.Core
										 
										-- play the animation
										currentAnimTrack:Play(transitionTime)
										currentAnim = animName
										currentAnimInstance = anim

										-- set up keyframe name triggers
										if (currentAnimKeyframeHandler ~= nil) then
											currentAnimKeyframeHandler:disconnect()
										end
										currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)
										
									end
								end)

								end

								-------------------------------------------------------------------------------------------
								-------------------------------------------------------------------------------------------

								local toolAnimName = ""
								local toolAnimTrack = nil
								local toolAnimInstance = nil
								local currentToolAnimKeyframeHandler = nil

								function toolKeyFrameReachedFunc(frameName)
									if (frameName == "End") then
								--		print("Keyframe : ".. frameName)	
										playToolAnimation(toolAnimName, 0.0, Humanoid)
									end
								end


								function playToolAnimation(animName, transitionTime, humanoid, priority)	 
										
										local roll = math.random(1, animTable[animName].totalWeight) 
										local origRoll = roll
										local idx = 1
										while (roll > animTable[animName][idx].weight) do
											roll = roll - animTable[animName][idx].weight
											idx = idx + 1
										end
								--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
										local anim = animTable[animName][idx].anim

										if (toolAnimInstance ~= anim) then
											
											if (toolAnimTrack ~= nil) then
												toolAnimTrack:Stop()
												toolAnimTrack:Destroy()
												transitionTime = 0
											end
													
											-- load it to the humanoid; get AnimationTrack
											toolAnimTrack = humanoid:LoadAnimation(anim)
											if priority then
												toolAnimTrack.Priority = priority
											end
											 
											-- play the animation
											toolAnimTrack:Play(transitionTime)
											toolAnimName = animName
											toolAnimInstance = anim

											currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
										end
								end

								function stopToolAnimations()
									local oldAnim = toolAnimName

									if (currentToolAnimKeyframeHandler ~= nil) then
										currentToolAnimKeyframeHandler:disconnect()
									end

									toolAnimName = ""
									toolAnimInstance = nil
									if (toolAnimTrack ~= nil) then
										toolAnimTrack:Stop()
										toolAnimTrack:Destroy()
										toolAnimTrack = nil
									end


									return oldAnim
								end

								-------------------------------------------------------------------------------------------
								-------------------------------------------------------------------------------------------


								onRunning = function(speed)
									if speed > 0.01 then
										playAnimation("walk", 0.1, Humanoid)
										if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
											setAnimationSpeed(speed / 14.5)
										end
										pose = "Running"
									else
										if emoteNames[currentAnim] == nil then
											playAnimation("idle", 0.1, Humanoid)
											pose = "Standing"
										end
									end
								end

								onDied = function()
									pose = "Dead"
								end

								onJumping = function()
									playAnimation("jump", 0.1, Humanoid)
									jumpAnimTime = jumpAnimDuration
									pose = "Jumping"
								end

								onClimbing = function(speed)
									playAnimation("climb", 0.1, Humanoid)
									setAnimationSpeed(speed / 12.0)
									pose = "Climbing"
								end

								onGettingUp = function()
									pose = "GettingUp"
								end

								onFreeFall = function()
									if (jumpAnimTime <= 0) then
										playAnimation("fall", fallTransitionTime, Humanoid)
									end
									pose = "FreeFall"
								end

								onFallingDown = function()
									pose = "FallingDown"
								end

								onSeated = function()
									pose = "Seated"
								end

								onPlatformStanding = function()
									pose = "PlatformStanding"
								end

								onSwimming = function(speed)
									if speed > 0 then
										pose = "Running"
									else
										pose = "Standing"
									end
								end

								function getTool()	
									for _, kid in ipairs(Figure:GetChildren()) do
										if kid.className == "Tool" then return kid end
									end
									return nil
								end

								function getToolAnim(tool)
									for _, c in ipairs(tool:GetChildren()) do
										if c.Name == "toolanim" and c.className == "StringValue" then
											return c
										end
									end
									return nil
								end

								function animateTool()
									
									if (toolAnim == "None") then
										playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
										return
									end

									if (toolAnim == "Slash") then
										playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
										return
									end

									if (toolAnim == "Lunge") then
										playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
										return
									end
								end

								function moveSit()
									RightShoulder.MaxVelocity = 0.15
									LeftShoulder.MaxVelocity = 0.15
									RightShoulder:SetDesiredAngle(3.14 /2)
									LeftShoulder:SetDesiredAngle(-3.14 /2)
									RightHip:SetDesiredAngle(3.14 /2)
									LeftHip:SetDesiredAngle(-3.14 /2)
								end

								local lastTick = 0

								function move(time)
									if AnimateDisabled then
										return
									end
									
									local amplitude = 1
									local frequency = 1
									local deltaTime = time - lastTick
									lastTick = time

									local climbFudge = 0
									local setAngles = false

									if (jumpAnimTime > 0) then
										jumpAnimTime = jumpAnimTime - deltaTime
									end

									if (pose == "FreeFall" and jumpAnimTime <= 0) then
										playAnimation("fall", fallTransitionTime, Humanoid)
									elseif (pose == "Seated") then
										playAnimation("sit", 0.5, Humanoid)
										return
									elseif (pose == "Running") then
										playAnimation("walk", 0.1, Humanoid)
									elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
								--		print("Wha " .. pose)
										stopAllAnimations()
										amplitude = 0.1
										frequency = 1
										setAngles = true
									end

									if (setAngles) then
										local desiredAngle = amplitude * math.sin(time * frequency)

										RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
										LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
										RightHip:SetDesiredAngle(-desiredAngle)
										LeftHip:SetDesiredAngle(-desiredAngle)
									end

									-- Tool Animation handling
									local tool = getTool()
									if tool and tool:FindFirstChild("Handle") then
									
										local animStringValueObject = getToolAnim(tool)

										if animStringValueObject then
											toolAnim = animStringValueObject.Value
											-- message recieved, delete StringValue
											animStringValueObject.Parent = nil
											toolAnimTime = time + .3
										end

										if time > toolAnimTime then
											toolAnimTime = 0
											toolAnim = "None"
										end

										animateTool()		
									else
										stopToolAnimations()
										toolAnim = "None"
										toolAnimInstance = nil
										toolAnimTime = 0
									end
								end

								-- connect events
								Humanoid.Died:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,1)
									onDied(...)
								end)
								Humanoid.Running:connect(function(Speed)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,2)
									--RunSpeed = Speed
									onRunning(Speed)
								end)
								Humanoid.Jumping:connect(onJumping)
								Humanoid.Climbing:connect(function(Speed)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,4)
									--ClimbSpeed = Speed
									onClimbing(Speed)
								end)
								Humanoid.GettingUp:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,5)
									onGettingUp(...)
								end)
								Humanoid.FreeFalling:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,6)
									onFreeFall(...)
								end)
								Humanoid.FallingDown:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,7)
									onFallingDown(...)
								end)
								Humanoid.Seated:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,8)
									onSeated(...)
								end)
								Humanoid.PlatformStanding:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,9)
									onPlatformStanding(...)
								end)
								Humanoid.Swimming:connect(function(...)
									if AnimateDisabled then
										return
									end
									--table.insert(AnimationQueue,10)
									onSwimming(...)
								end)

								-- setup emote chat hook
								game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
									local emote = ""
									if msg == "/e dance" then
										emote = dances[math.random(1, #dances)]
									elseif (string.sub(msg, 1, 3) == "/e ") then
										emote = string.sub(msg, 4)
									elseif (string.sub(msg, 1, 7) == "/emote ") then
										emote = string.sub(msg, 8)
									end
									
									if (pose == "Standing" and emoteNames[emote] ~= nil) then
										playAnimation(emote, 0.1, Humanoid)
									end

								end)


								-- main program

								-- initialize to idle
								playAnimation("idle", 0.1, Humanoid)
								pose = "Standing"

								spawn(function()
									while Figure.Parent ~= nil do
										local _, time = wait(0.1)
										move(time)
									end
								end)
		end
	end
end

-- Camera/Input Functions
local GetZoom -- GetZoom() -> number
local SetZoom -- SetZoom(Zoom) -> nil

local GetShiftLockEnabled -- GetShiftLockEnabled() -> bool
local SetShiftLockEnabled -- SetShiftLockEnabled(Enabled) -> nil

local SetCameraCFrame -- SetCameraCFrame(NewCFrame) -> nil

local BlockInputs -- BlockInputs() -> nil
local UnlockInputs -- UnlockInputs() -> nil

local SetCursorIcon -- SetCursorIcon(Icon) -> nil
local SetCursorSize -- SetCursorSize(Size) -> nil
local SetCursorOffset -- SetCursorOffset(Offset) -> nil
local SetCursor -- SetCursorIcon(CursorName) -> nil
do
	-- Load mouse lock action
	VirtualInputManager:SendKeyEvent(true, 304, false, workspace)
	wait()
	VirtualInputManager:SendKeyEvent(true, 304, false, workspace)
	wait()
	
	local ZoomControllers = {}
	
	do -- Get ZoomControllers from getgc
		for _,Table in pairs(getgc(true)) do
			if type(Table) == "table" then
				pcall(function()
					if type(Table.SetCameraToSubjectDistance) == "function"
					and type(Table.GetCameraToSubjectDistance) == "function"
					and Table.FIRST_PERSON_DISTANCE_THRESHOLD
					and Table.lastCameraTransform then
						table.insert(ZoomControllers,Table)
					end
				end)
			end
		end
		ConsoleMessage(tostring(#ZoomControllers).." ZoomController"..(#ZoomControllers == 1 and "" or "s"))
	end
	GetZoom = function()
		for _,ZoomController in pairs(ZoomControllers) do
			local Zoom = ZoomController:GetCameraToSubjectDistance()
			if Zoom and Zoom ~= 12.5 then -- Sometimes a ZoomController returns 12.5 so check if theres any other zoom levels before picking 12.5
				return Zoom
			end
		end
		return 12.5
	end
	SetZoom = function(Zoom)
		for _,ZoomController in pairs(ZoomControllers) do
			pcall(function() -- Sometimes a ZoomController errors and breaks the whole script
				ZoomController:SetCameraToSubjectDistance(Zoom)
			end)
		end
	end
	
	-- from original replayability
	GetShiftLockEnabled = function()
		return ShiftLockEnabled
	end
	SetShiftLockEnabled = function(Enabled)
		if ShiftLockEnabled ~= Enabled then
			ShiftLockEnabled = Enabled
			if Enabled then
				SetCursor("MouseLockedCursor")
			else
				SetCursor("ArrowFarCursor")
			end
			ContextActionService:CallFunction("MouseLockSwitchAction", Enum.UserInputState.Begin, game)
		end
	end
	
	SetCameraCFrame = function(NewCFrame)
		CameraCFrame = NewCFrame
		workspace.CurrentCamera.CFrame = NewCFrame
	end
	
	local BlockGui = Instance.new("ScreenGui")
	local BlockFrame = Instance.new("TextButton")
	BlockFrame.Text = ""
	BlockFrame.BackgroundTransparency = 1
	BlockFrame.Size = UDim2.fromScale(1,1)
	BlockFrame.Selectable = false
	BlockFrame.Selected = false
	BlockFrame.Parent = BlockGui
	BlockGui.Enabled = false
	BlockGui.Parent = GUIParent
	BlockInputs = function()
		BlockGui.Enabled = true
	end
	UnblockInputs = function()
		BlockGui.Enabled = false
	end
	
	local CursorHolder = Instance.new("ScreenGui")
	Cursor.BackgroundTransparency = 1
	Cursor.ZIndex = math.huge
	Cursor.Parent = CursorHolder
	CursorHolder.ZIndexBehavior = Enum.ZIndexBehavior.Global
	CursorHolder.Parent = GUIParent
	Resolution = CursorHolder.AbsoluteSize
	SetCursor = function(CursorName)
		local CursorData = Cursors[CursorName]
		CursorIcon = CursorData.Icon
		CursorSize = CursorData.Size
		CursorOffset = CursorData.Offset
	end
end

-- AHK Functions
local IsInstalled -- IsInstalled() -> bool
local SendSignal -- SendSignal(Signal) -> nil
do
	IsInstalled = function()
		return isfolder(AHKConnectionFolderPath)
	end
	SendSignal = function(Signal)
		if IsInstalled() then
			writefile(AHKConnectionRequestPath,Signal)
		else
			ConsoleMessage("AHK folder not found")
		end
	end
end


local Freeze -- Defined earlier so it can be used in replay functions


-- Replay Functions
local GetReplayFile -- GetReplayFile() -> string
local ReplayEncode -- ReplayEncode(Table) -> string
local ReplayDecode -- ReplayEncode(String) -> table

local RecordReplay -- RecordReplay() -> nil [Event]
local StartRecording -- StartRecording() -> nil
local StopRecording -- StopRecording() -> nil
local SaveRecording -- SaveRecording() -> nil
local DiscardRecording -- DiscardRecording() -> nil

local StartReading -- StartReading() -> nil
local StopReading -- StopReading() -> nil

local GetCheckpoint -- GetCheckpoint(CheckpointNumber?) -> number
local SetCheckpoint -- SetCheckpoint(FrameIndex?) -> nil

local GotoFrame -- GotoFrame(Index) -> nil
do
	GetReplayFile = function()
		if not isfolder(string.split(FolderPath,"/")[1]) then
			makefolder(string.split(FolderPath,"/")[1])
		end
		if not isfolder(FolderPath) then
			makefolder(FolderPath)
		end
		if not isfile(ReplayPath) then
			writefile(ReplayPath,ReplayFileBeginning)
			return ReplayFileBeginning
		end
		return readfile(ReplayPath)
	end

	ReplayEncode = function(Table)
		ConsoleMessage("Encoding "..tostring(#Table).." frames")
		local StartTick = tick()
		local Encoded = json.encode(Table)
		ConsoleMessage("Done encoding in",RoundNumber(tick()-StartTick,2),"seconds")
		return ReplayFileBeginning..Encoded..ReplayFileEnding
	end
	ReplayDecode = function(String)
		if String == ReplayFileBeginning or String == ReplayFileBeginning..ReplayFileEnding then
			ConsoleMessage("Nothing to read")
			return
		end
		ConsoleMessage("Decoding "..tostring(#String).." characters")
		local StartTick = tick()
		local Decoded = json.decode(String)
		ConsoleMessage("Done decoding in",RoundNumber(tick()-StartTick,2),"seconds")
		return Decoded.Replay
	end
	
	
	RecordReplay = function()
		ConsoleMessage("Waiting for input")
		if Writing then
			ConsoleMessage("Recording stopped")
			StopRecording()
			return
		end
		SetColorCodeFrame("WaitingForInput")
		WaitForInput()
		StartRecording()
		ConsoleMessage("Recording started")
	end
	StartRecording = function()
		if not Reading then
			SetColorCodeFrame("Recording")
			Writing = true
		end
	end
	StopRecording = function()
		if not Reading then
			Writing = false
		end
	end
	
	SaveToFile = function()
		local ReplayEncoded = ReplayEncode(ReplayTable)
		writefile(ReplayPath,ReplayEncoded)
	end
	
	SaveRecording = function()
		if #RecordingTable > 0 then
			local old = #ReplayTable
			for _,Frame in pairs(RecordingTable) do
				table.insert(ReplayTable,Frame)
			end
			RecordingTable = {}
			ConsoleMessage("Saved")
		end
	end
	DiscardRecording = function()
		if #RecordingTable > 0 then
			RecordingTable = {}
			ConsoleMessage("Discarded")
		end
	end
	StartReading = function()
		if not Reading then
			SaveToFile()
			ReplayTable = ReplayDecode(GetReplayFile()) -- Decode replay from file
			if ReplayTable then
				-- Decoding successful
				Freeze(false) -- Unfreeze
				AnimateDisabled = true -- Disable fake animate script
				Workspace.Gravity = 0
				ReplayTableIndex = 1
				BlockInputs() -- Disable scrolling and clicks
				Reading = true
				SetColorCodeFrame("Reading")
				ConsoleMessage("Reading started")
				ConsoleMessage("Length: "..RoundNumber(tostring(#ReplayTable/60)).." seconds")
			else
				-- Decoding failed
				ReplayTable = {}
				SetColorCodeFrame("Idle")
			end
		else
			ConsoleMessage("You are already reading")
		end
	end
	StopReading = function()
		if Reading then
			UnblockInputs() -- Enable scrolling and clicks
			Character.Head.CanCollide = true -- Fix character collisions
			Character.Torso.CanCollide = true -- Fix character collisions
			Character.HumanoidRootPart.CanCollide = true -- Fix character collisions
			AnimateDisabled = false -- Enable fake animate script
			Reading = false
			Character.Humanoid.JumpPower = DefaultJumpPower
			Character.Humanoid.WalkSpeed = DefaultWalkSpeed
			Workspace.Gravity = DefaultGravity
			SetColorCodeFrame("Idle")
			ConsoleMessage("Reading stopped")
		else
			ConsoleMessage("You are not reading")
		end
	end
end

-- Tasability functions
--local Freeze -- Freeze(NewFrozen) -> nil
do
	Freeze = function(NewFrozen,DoNotRecord)
		if Frozen ~= NewFrozen and not Reading then
			SeekDirection = 0
			if NewFrozen then
				Frozen = true
				StopRecording()
				SaveRecording()
				FreezeFrame = #ReplayTable
				SetColorCodeFrame("Frozen")
			else
				
				--ConsoleMessage(#ReplayTable)
				--ConsoleMessage(FreezeFrame)
				
				if DoNotRecord then
					Frozen = false
					SetColorCodeFrame("Idle")
				else
					for Index = #ReplayTable,FreezeFrame,-1 do
						--ConsoleMessage(Index)
						ReplayTable[Index] = nil
					end
					Frozen = false
					StartRecording()
					SetColorCodeFrame("Recording")
				end
			end
		end
	end
end

-- Commands
local Commands = {}
do
	Commands["help"] = function(Args)
		if Args == "help" then
			ConsoleMessage("help <command>: Shows a list of all commands, or a specific command")
		else
			local Command = Args[1]
			if Command then
				Command = string.lower(Command)
				if Commands[Command] then
					Commands[Command]("help")
				else
					ConsoleMessage("Command", Command, "was not found")
				end
			else
				for _,Command in pairs(Commands) do
					Command("help")
				end
			end
		end
	end
	Commands["erase"] = function(Args)
		if Args == "help" then
			ConsoleMessage("erase: Erases all data from the folder",PlaceId)
		else
			writefile(ReplayPath,ReplayFileBeginning)
			ReplayTable = {}
			return ReplayPath.." has been erased"
		end
	end
	Commands["setsdm"] = function(Args)
		if Args == "help" then
			ConsoleMessage("setsdm <number SeekDirectionMultiplier>: Sets speed multiplier when using R and T while frozen")
		else
			local Number = tonumber(Args[1]) or 1
			if Number then
				local OldValue = SeekDirectionMultiplier
				SeekDirectionMultiplier = Number
				return "SeekDirectionMultiplier has been set from "..tostring(OldValue).." to "..tostring(Number)
			end
		end
	end
	Commands["rejoin"] = function(Args)
		if Args == "help" then
			ConsoleMessage("rejoin <bool SaveReplay>: Sets one of the configs at the top of the script (PlaybackInputs, etc)")
		else
			local SaveReplay = Args[1] and string.lower(Args[1])
			ConsoleMessage("Saving...")
			if SaveReplay == "true" or SaveReplay == "yes" or SaveReplay == "1" or SaveReplay == "save" then
				SaveToFile()
			end
			ConsoleMessage("Rejoining...")
			if #game.Players:GetPlayers() <= 1 then
				game.Players.LocalPlayer:Kick("\nRejoining...")
				wait()
				game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
			else
				game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
			end
			return "Sent request to rejoin"
		end
	end
	Commands["invite"] = function(Args)
		if Args == "help" then
			ConsoleMessage("invite: Invites you to Tasability Discord")
		else
			request({
				Url = "http://127.0.0.1:6463/rpc?v=1",
				Method = "POST",
				Headers = {
					["Content-Type"] = "application/json",
					["origin"] = "https://discord.com",
				},
				Body = game:GetService("HttpService"):JSONEncode({
					["args"] = {
						["code"] = "Shyfsc2cJ9",
					},
					["cmd"] = "INVITE_BROWSER",
					["nonce"] = "."
				})
			})
			return "Sent invite (if your exploit blocked it the invite is https://discord.gg/Shyfsc2cJ9)"
		end
	end
end

-- Connection Functions
local StateChanged
local CharacterAdded
local InputBegan
local RenderStepped
local Stepped
local ReadButton_MouseButton1Click
local SaveToFileButton_MouseButton1Click
local IdleButton_MouseButton1Click
local CurrentPlaceIdButton_MouseButton1Click
local CurrentCamera_Changed
local CommandBar_FocusLost
local CommandBar_MouseEnter
local CommandBar_MouseLeave
do
	StateChanged = function(_,State)
		table.insert(HumanoidStateQueue,State.Value)
	end
	CharacterAdded = function(NewCharacter)
		Humanoid = NewCharacter:WaitForChild("Humanoid")
		Humanoid.StateChanged:Connect(StateChanged)
		RootPart = NewCharacter:WaitForChild("HumanoidRootPart")
		DefaultJumpPower = Humanoid.JumpPower
		DefaultWalkSpeed = Humanoid.WalkSpeed
		Reanimate(NewCharacter)
		Character = NewCharacter
		Humanoid.Died:Connect(function()
			Dead = true
		end)
		Dead = false
	end
	InputBegan = function(Input,GameProcessed)
		if IgnoreGameProcessed then
			GameProcessed = false
		end
		
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			table.insert(InputBeganQueue,"b1")
		elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
			table.insert(InputBeganQueue,"b2")
		elseif Input.UserInputType == Enum.UserInputType.Keyboard then
			local InputName = string.split(tostring(Input.KeyCode),".")[3]
			if not InputBlacklist[InputName] then
				table.insert(InputBeganQueue,InputName)
			end
		end
		
		if Input.KeyCode == Enum.KeyCode.LeftShift and not Reading and not GameProcessed then
			SetShiftLockEnabled(not ShiftLockEnabled)
		end
		
		if Input.KeyCode == Enum.KeyCode.E and not GameProcessed then
			-- Freeze/Unfreeze
			Freeze(not Frozen)
		elseif Input.KeyCode == Enum.KeyCode.R and not GameProcessed then
			-- Seek backwards
			if not Reading then
				Freeze(true)
				if SeekDirection == 0 then
					SeekDirection = -1*SeekDirectionMultiplier -- Backwards
				end
			end
		elseif Input.KeyCode == Enum.KeyCode.T and not GameProcessed then
			-- Seek fowards
			if not Reading then
				Freeze(true)
				if SeekDirection == 0 then
					SeekDirection = 1*SeekDirectionMultiplier -- Fowards
				end
			end
		elseif Input.KeyCode == Enum.KeyCode.F and not GameProcessed then
			-- Go 1 frame backwards
			Freeze(true)
			if Frozen and SeekDirection == 0 then
				local NewFreezeFrame = FreezeFrame - 1
				if NewFreezeFrame > 0 and NewFreezeFrame <= #ReplayTable then
					FreezeFrame = NewFreezeFrame
				end
			end
		elseif Input.KeyCode == Enum.KeyCode.G and not GameProcessed then
			-- Go 1 frame fowards
			Freeze(true)
			if Frozen and SeekDirection == 0 then
				local NewFreezeFrame = FreezeFrame + 1
				if NewFreezeFrame > 0 and NewFreezeFrame <= #ReplayTable then
					FreezeFrame = NewFreezeFrame
				end
			end
		elseif Input.KeyCode == Enum.KeyCode.U and not GameProcessed then
			-- Toggle UI
			MainFrame.Visible = not MainFrame.Visible
		elseif Input.KeyCode == Enum.KeyCode.L and not GameProcessed then
			-- Stop reading
			StopReading()
		elseif Input.KeyCode == Enum.KeyCode.P and not GameProcessed then
			-- Save to file
			SaveToFile()
		elseif Input.KeyCode == Enum.KeyCode.M and not GameProcessed then
			-- Save to file
			IdleButton_MouseButton1Click()
		end
	end
	InputChanged = function(Input,GameProcessed)
		if Input.UserInputType == Enum.UserInputType.MouseWheel then
			if Input.Position.Z > 0 then
				table.insert(InputBeganQueue,"u")
			else
				table.insert(InputBeganQueue,"d")
			end
		end
	end
	InputEnded = function(Input,GameProcessed)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			table.insert(InputEndedQueue,"b1")
		elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
			table.insert(InputEndedQueue,"b2")
		elseif Input.UserInputType == Enum.UserInputType.MouseWheel then
			if Input.Position.Z > 0 then
				table.insert(InputEndedQueue,"u")
			else
				table.insert(InputEndedQueue,"d")
			end
		elseif Input.UserInputType == Enum.UserInputType.Keyboard then
			local InputName = string.split(tostring(Input.KeyCode),".")[3]
			table.insert(InputEndedQueue,InputName)
		end
		
		if Input.KeyCode == Enum.KeyCode.R then
			-- Stop seeking backwards
			if SeekDirection == -1*SeekDirectionMultiplier then
				SeekDirection = 0
			end
		elseif Input.KeyCode == Enum.KeyCode.T then
			-- Stop seeking fowards
			if SeekDirection == 1*SeekDirectionMultiplier then
				SeekDirection = 0
			end
		end
	end
	RenderStepped = function(...)
		for _,Function in pairs(RenderSteppedConnections) do
			Function(...)
		end
	end
	Stepped = function(...)
		for _,Function in pairs(SteppedConnections) do
			Function(...)
		end
	end
	ReadButton_MouseButton1Click = function()
		if ReplayStartTime >= 1 then
			for i = ReplayStartTime,1,-1 do
				ConsoleMessage("Reading in "..tostring(i).." seconds")
				wait(1)
			end
		end
		StartReading()
	end
	SaveToFileButton_MouseButton1Click = function()
		SaveToFile()
	end
	IdleButton_MouseButton1Click = function()
		if GetColorCodeFrame() == "Frozen" then
			Freeze(false,true)
		end
	end
	IgnoreGameProcessedButton_MouseButton1Click = function()
		IgnoreGameProcessed = not IgnoreGameProcessed
	end
	CurrentPlaceIdButton_MouseButton1Click = function()
		if string.find(CurrentPlaceIdButton.Text, "Place") then
			local OldText = CurrentPlaceIdButton.Text
			setclipboard(tostring(PlaceId))
			CurrentPlaceIdButton.Text = "Copied id"
			wait(.5)
			CurrentPlaceIdButton.Text = OldText
		end
	end
	CurrentCamera_Changed = function()
		if Reading then
			workspace.CurrentCamera.CFrame = CameraCFrame
		end
	end
	CommandBar_FocusLost = function()
		local Input = CommandBar.Text
		local InputSplit = string.split(Input," ")
		local Command = Commands[string.lower(InputSplit[1])]
		if Command then
			table.remove(InputSplit,1)
			local ReturnMessage = Command(InputSplit)
			if ReturnMessage then
				ConsoleMessage(ReturnMessage)
			end
		else
			ConsoleMessage("Command",InputSplit[1],"was not found")
		end
		CommandBar.Text = ""
	end
	CommandBar_MouseEnter = function()
		CommandBar.BackgroundColor3 = Color3.new(0.2,0.2,0.2)
	end
	CommandBar_MouseLeave = function()
		CommandBar.BackgroundColor3 = Color3.new(0,0,0)
	end
end

-- RenderStepped/Stepped connections
do
	RenderSteppedConnections.UpdateFreezeFrame = function()
		RecordedFramesLabel.Text = RoundNumber(FreezeFrame,0)
	end
	RenderSteppedConnections.UpdateIgnoreGameProcessedButton = function()
		if IgnoreGameProcessed then
			IgnoreGameProcessedButton.BackgroundColor3 = Color3.new(0.5,1,0.5)
		else
			IgnoreGameProcessedButton.BackgroundColor3 = Color3.new(1,0.5,0.5)
		end
	end
	RenderSteppedConnections.SeekDirectionHandler = function()
		if Frozen then
			local NewFreezeFrame = FreezeFrame + SeekDirection
			if NewFreezeFrame < 1 then
				FreezeFrame = 1
			elseif NewFreezeFrame > #ReplayTable then
				FreezeFrame = #ReplayTable
			else
				FreezeFrame = NewFreezeFrame
			end
		end
	end
	local PressedWriting = {}
	SteppedConnections.UpdateInputPreview = function()
		for _,Input in pairs(InputBeganQueue) do
			if Input == "u" or Input == "d" then
				return
			end
			Pressed[Input] = true
		end
		for _,Input in pairs(InputEndedQueue) do
			Pressed[Input] = nil
		end
		PressedKeysLabel.Text = "|"
		for Input,_ in pairs(Pressed) do
			PressedKeysLabel.Text = PressedKeysLabel.Text..Input.."|"
		end
		
		-- MOVED TO FREEZE LOOP
		--[[if Writing then
			for _,Input in pairs(InputBeganQueue) do
				if Input == "u" or Input == "d" then
					return
				end
				PressedWriting[Input] = true
			end
			for _,Input in pairs(InputEndedQueue) do
				PressedWriting[Input] = nil
			end
			WritingPressedKeysLabel.Text = "|"
			for Input,_ in pairs(PressedWriting) do
				WritingPressedKeysLabel.Text = WritingPressedKeysLabel.Text..Input.."|"
			end
		end]]
	end
end

do -- Connections
	UserInputService.InputBegan:Connect(InputBegan)
	UserInputService.InputChanged:Connect(InputChanged)
	UserInputService.InputEnded:Connect(InputEnded)
	RunService.RenderStepped:Connect(RenderStepped)
	RunService.Stepped:Connect(Stepped)
	Player.CharacterAdded:Connect(CharacterAdded)
	ReadButton.MouseButton1Click:Connect(ReadButton_MouseButton1Click)
	SaveToFileButton.MouseButton1Click:Connect(SaveToFileButton_MouseButton1Click)
	IdleButton.MouseButton1Click:Connect(IdleButton_MouseButton1Click)
	CurrentPlaceIdButton.MouseButton1Click:Connect(CurrentPlaceIdButton_MouseButton1Click)
	IgnoreGameProcessedButton.MouseButton1Click:Connect(IgnoreGameProcessedButton_MouseButton1Click)
	workspace.CurrentCamera.Changed:Connect(CurrentCamera_Changed)
	CommandBar.FocusLost:Connect(CommandBar_FocusLost)
	CommandBar.MouseEnter:Connect(CommandBar_MouseEnter)
	CommandBar.MouseLeave:Connect(CommandBar_MouseLeave)
end

do -- Setup
	GetReplayFile() -- Create folders and files for Replayability+ if needed
	SetCursor("ArrowFarCursor") -- Add fake cursor
	UserInputService.MouseIconEnabled = false -- Remove real cursor
	DefaultGravity = Workspace.Gravity -- Set DefaultGravity
	ShiftLockBoundKeys.Value = "" -- Remove shift lock keybinds
	CharacterAdded(Player.Character) -- Set character
	Dragify(MainFrame) -- Draggable gui
	SetColorCodeFrame("Idle") -- Set color code
	GUI.Parent = GUIParent
end

spawn(function() -- Reading
	while true do
		if Reading then
			local Frame = ReplayTable[ReplayTableIndex]
			
			if Frame == 0 then
				-- Voided
				Humanoid:ChangeState(15) -- Dead
				for _,Descendant in pairs(Character:GetDescendants()) do
					if Descendant:IsA("BasePart") then
						Descendant:Destroy()
					end
				end
				repeat wait() until not Dead
				RunService.Heartbeat:Wait()
				ReplayTableIndex = ReplayTableIndex + 1
				continue
			elseif Frame == 1 then
				-- Dead
				Humanoid:ChangeState(15) -- Dead
				workspace.Gravity = DefaultGravity -- So the body parts fall
				repeat wait() until not Dead
				RunService.Heartbeat:Wait()
				ReplayTableIndex = ReplayTableIndex + 1
				continue
			end
			if not Frame then
				StopReading()
				continue
			end
			
			AnimateDisabled = true
			workspace.Gravity = 0
			Character.Humanoid.JumpPower = 0
			Character.Humanoid.WalkSpeed = 0
			
			if not Character:FindFirstChild("HumanoidRootPart") then
				RunService.Heartbeat:Wait()
				continue
			end
			
			local HumanoidRootPartCFrame = TableToCFrame(Frame[1]) -- Now used in the RenderStepped loop
			local Animations = Frame[2]
			local AnimationSpeed = Frame[3]
			local HumanoidState = Frame[4]
			local HumanoidRootPartVelocity = TableToVector3(Frame[5])
			local HumanoidRootPartRotVelocity = TableToVector3(Frame[6])
			local CurrentCameraCFrame = TableToCFrame(Frame[7]) -- Now used in the RenderStepped loop
			local Zoom = Frame[8] -- Now used in the RenderStepped loop
			local AnimatePose = Frame[9]
			local ShiftLockEnabled = (Frame[10] == 1 and true) or false
			local MouseLocation = TableToVector2(Frame[11])
			local InputBeganQueue = Frame[12][1]
			local InputEndedQueue = Frame[12][2]
			
			local CurrentState = Humanoid:GetState().Value
			
			SetCameraCFrame(CurrentCameraCFrame)
			SetZoom(Zoom)
			
			Humanoid:ChangeState(HumanoidState)
			
			pose = AnimatePose
			for _,Arguments in pairs(Animations) do
				local Animation = Arguments[1]
				local TransitionTime = Arguments[2]
				if Animation == "walk" then
					if Humanoid.FloorMaterial ~= Enum.Material.Air and CurrentState ~= 3 then
						playAnimation("walk",TransitionTime,Humanoid,true)
					end
				else
					playAnimation(Animation,TransitionTime,Humanoid,true)
				end
			end
			
			pcall(setAnimationSpeed,AnimationSpeed)
			
			if ShiftLockEnabled then
				SetShiftLockEnabled(true)
			else
				SetShiftLockEnabled(false)
			end
			if PlaybackMouseLocation and not ShiftLockEnabled and Zoom > 0.52 then
				mousemoveabs(MouseLocation.X,MouseLocation.Y)
			else
				-- Middle of the screen
				mousemoveabs((Resolution.X/2)+CursorOffset.X-GuiInset.X,(Resolution.Y/2)+CursorOffset.Y-GuiInset.Y-36)
			end
			if PlaybackInputs then
				local Signal = {}
				for _,Input in pairs(InputBeganQueue) do
					local Code = InputCodes[Input]
					if Code then
						keypress(Code)
					else
						if Input == "b1" then
							mouse1press()
						elseif Input == "b2" then
							mouse2press()
						elseif Input == "u" then
							table.insert(Signal,"u")
						elseif Input == "d" then
							table.insert(Signal,"d")
						else
							ConsoleMessage(tostring(Input).." was not found in InputCodes and will not be pressed")
						end
					end
				end
				for _,Input in pairs(InputEndedQueue) do
					local Code = InputCodes[Input]
					if Code then
						keyrelease(Code)
					else
						if Input == "b1" then
							mouse1release()
						elseif Input == "b2" then
							mouse2release()
						else
							ConsoleMessage(tostring(Input).." was not found in InputCodes and will not be released")
						end
					end
				end
				Signal = table.concat(Signal,",") -- {"u","u","d"} -> "u,u,d"
				SendSignal(Signal)
			end
			--Character.HumanoidRootPart.Velocity = HumanoidRootPartVelocity
			--Character.HumanoidRootPart.RotVelocity = HumanoidRootPartRotVelocity
			
			--Character.HumanoidRootPart.Velocity = Vector3.new()
			--Character.HumanoidRootPart.RotVelocity = Vector3.new()
			
			Character.HumanoidRootPart.CFrame = HumanoidRootPartCFrame
			
			ReplayTableIndex = ReplayTableIndex + 1
		end
		RunService.Heartbeat:Wait()
	end
end)
spawn(function() -- Reading but with Stepped to remove some delay on client
	while true do
		if Reading then
			if workspace.Gravity ~= DefaultGravity then
				for _,v in pairs(Character:GetChildren()) do
					if v:IsA("BasePart") then
						v.CanCollide = false
					end
				end
			end
			
			if not Character:FindFirstChild("HumanoidRootPart") then
				RunService.Stepped:Wait()
				continue
			end
			
			local Frame = ReplayTable[ReplayTableIndex]
			
			if Frame and type(Frame) == "table" then
				local HumanoidRootPartCFrame = TableToCFrame(Frame[1])
				local CurrentCameraCFrame = TableToCFrame(Frame[7])
				local Zoom = Frame[8]
				--workspace.CurrentCamera.CFrame = CameraCFrame
				--workspace.CurrentCamera.CFrame = CameraCFrame
				--SetZoom(Zoom)
				
				Character.HumanoidRootPart.CFrame = HumanoidRootPartCFrame
			end
		else
			workspace.Gravity = DefaultGravity
		end
		RunService.Stepped:Wait()
	end
end)
spawn(function() -- Reading but with RenderStepped to remove some delay on client
	while true do
		if Reading then
			
			if not Character:FindFirstChild("HumanoidRootPart") then
				RunService.RenderStepped:Wait()
				continue
			end
			
			local Frame = ReplayTable[ReplayTableIndex]
			
			if Frame and type(Frame) == "table" then
				local HumanoidRootPartCFrame = TableToCFrame(Frame[1])
				local CurrentCameraCFrame = TableToCFrame(Frame[7])
				local Zoom = Frame[8]
				
				--workspace.CurrentCamera.CFrame = CameraCFrame
				--Character.HumanoidRootPart.CFrame = HumanoidRootPartCFrame
				--Character.HumanoidRootPart.CFrame = HumanoidRootPartCFrame
			end
		end
		RunService.RenderStepped:Wait()
	end
end)

spawn(function() -- Writing
	while true do
		--print(currentAnimSpeed)
		--print(GetShiftLockEnabled())
		--table.foreach(InputEndedQueue,print)
		--print(GetZoom())
		if Writing then
			if (not Character or not Character.Parent) or (not Character:FindFirstChild("HumanoidRootPart")) then
				if type(RecordingTable[#RecordingTable]) == "table" then
					table.insert(RecordingTable,0) -- Voided
				end
				RunService.RenderStepped:Wait()
				continue
			end
			if (Humanoid.Health == 0) then
				if type(RecordingTable[#RecordingTable]) == "table" then
					table.insert(RecordingTable,1) -- Dead
				end
				RunService.RenderStepped:Wait()
				continue
			end
			local Frame = {}
			Frame[1] = RoundTable(CFrameToTable(Character.HumanoidRootPart.CFrame),RoundDigits)
			Frame[2] = AnimationQueue
			Frame[3] = RoundNumber(currentAnimSpeed,RoundDigits)
			Frame[4] = Humanoid:GetState().Value
			Frame[5] = RoundTable(Vector3ToTable(Character.HumanoidRootPart.Velocity),RoundDigits)
			Frame[6] = RoundTable(Vector3ToTable(Character.HumanoidRootPart.RotVelocity),RoundDigits)
			Frame[7] = RoundTable(CFrameToTable(workspace.CurrentCamera.CFrame),RoundDigits)
			Frame[8] = RoundNumber(GetZoom(),RoundDigits)
			Frame[9] = pose
			Frame[10] = (GetShiftLockEnabled() and 1) or 0
			Frame[11] = RoundTable(Vector2ToTable(UserInputService:GetMouseLocation()),RoundDigits)
			Frame[12] = {InputBeganQueue,InputEndedQueue}
			table.insert(RecordingTable,Frame)
		end
		AnimationQueue = {}
		RunSpeed = 0
		ClimbSpeed = 0
		HumanoidStateQueue = {}
		if setfpscap then
			setfpscap(60)
		end
		RunService.RenderStepped:Wait()
	end
end)

-- Clear input queues
RunService.Heartbeat:Connect(function()
	InputBeganQueue = {}
	InputEndedQueue = {}
end)

spawn(function() -- Check if connected
	while true do
		wait(1)
		if not Reading then
			local Installed = IsInstalled()
			if Installed then
				ConnectedLabel.Text = "AHK folder found"
				ConnectedLabel.TextColor3 = Color3.new(0,0.8,0)
			else
				ConnectedLabel.Text = "AHK folder not found"
				ConnectedLabel.TextColor3 = Color3.new(0.8,0,0)
			end
		end
	end
end)

spawn(function() -- Update cursor
	while true do
		Cursor.Image = CursorIcon
		Cursor.Size = CursorSize
		local MouseLocation = UserInputService:GetMouseLocation()
		if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter then
			Cursor.Position = UDim2.fromOffset((Resolution.X/2)+CursorOffset.X-GuiInset.X,(Resolution.Y/2)+CursorOffset.Y-GuiInset.Y-18)
		else
			Cursor.Position = UDim2.fromOffset(MouseLocation.X+CursorOffset.X-GuiInset.X,MouseLocation.Y+CursorOffset.Y-GuiInset.Y-36)
		end
		RunService.RenderStepped:Wait()
	end
end)

--[[local oldprint
oldprint = hookfunction(print,function(...)
	if checkcaller() then
		return oldprint(...)
	end
end)]]

spawn(function() -- Handling freezing
	while true do
		if Frozen then
			Character.HumanoidRootPart.Anchored = true
			if FreezeFrame > 0 and FreezeFrame <= #ReplayTable then
				local RoundedFreezeFrame = RoundNumber(FreezeFrame,0)
				local Frame = ReplayTable[RoundedFreezeFrame]
				
				if type(Frame) == "table" then
					
					local AnimatePose -- -2
					local Animation -- -1
					
					-- Backtrack in ReplayTable to find AnimatePose and Animation
					for Index = RoundedFreezeFrame,1,-1 do
						if AnimatePose and Animation then
							break
						end
						local Frame = ReplayTable[Index]
						if type(Frame) == "table" then
							AnimatePose = Frame[9]
							Animation = Frame[2][#Frame[2]]
						end
					end
					
					-- Backtrack again to find which keys are pressed at the current frame
					local CurrentPressedKeys = {}
					for Index = RoundedFreezeFrame-math.max(FrameBacktrackCount,0),RoundedFreezeFrame do
						local Frame = ReplayTable[Index]
						if Frame and type(Frame) == "table" then
							local BeganInputs,EndedInputs = unpack(Frame[12])
							
							for _,Key in pairs(BeganInputs) do
								if Key ~= "u" and Key ~= "d" then -- Exclude scroll inputs
									CurrentPressedKeys[Key] = true
								end
							end
							
							for _,Key in pairs(EndedInputs) do
								-- Scroll inputs don't show up in EndedInputs
								CurrentPressedKeys[Key] = nil
							end
						end
					end
					
					-- Display keys pressed on WritingPressedKeysLabel
					WritingPressedKeysLabel.Text = "|"
					for Input,_ in pairs(CurrentPressedKeys) do
						WritingPressedKeysLabel.Text = WritingPressedKeysLabel.Text..Input.."|"
					end
					
					local HumanoidRootPartCFrame = TableToCFrame(Frame[1]) -- 4
					local AnimationSpeed = Frame[3] -- 9
					local HumanoidState = Frame[4] -- 1
					local HumanoidRootPartVelocity = TableToVector3(Frame[5]) -- 2
					local HumanoidRootPartRotVelocity = TableToVector3(Frame[6]) -- 3
					local CameraCFrame = TableToCFrame(Frame[7]) -- 5
					local Zoom = Frame[8] -- 6
					local ShiftLockEnabled = (Frame[10] == 1 and true) or false -- 7
					local MouseLocation = TableToVector2(Frame[11]) -- 8
					
					local CurrentState = Humanoid:GetState().Value
					
					-- -1
					if Animation then
						if Animation[1] == "walk" then
							if Humanoid.FloorMaterial ~= Enum.Material.Air and CurrentState ~= 3 then
								playAnimation("walk",Animation[2],Humanoid,true)
							end
						else
							playAnimation(Animation[1],Animation[2],Humanoid,true)
						end
					end
					pcall(setAnimationSpeed,AnimationSpeed) -- 9
					pose = AnimatePose -- -2
					
					Humanoid:ChangeState(HumanoidState) -- 1
					
					Character.HumanoidRootPart.Velocity = HumanoidRootPartVelocity -- 2
					Character.HumanoidRootPart.RotVelocity = HumanoidRootPartRotVelocity -- 3
					Character.HumanoidRootPart.CFrame = HumanoidRootPartCFrame -- 4
					workspace.CurrentCamera.CFrame = CameraCFrame -- 5
					SetZoom(Zoom) -- 6
					if ShiftLockEnabled ~= GetShiftLockEnabled() then
						SetShiftLockEnabled(ShiftLockEnabled) -- 7
					end
					if PlaybackMouseLocation then
						mousemoveabs(MouseLocation.X,MouseLocation.Y) -- 8
					end
				else
					-- Frame is not a table
					RunService.RenderStepped:Wait()
				end
			else
				--ConsoleMessage("FreezeFrame is",FreezeFrame,"(not in range)")
			end
		else
			pcall(function()
				Character.HumanoidRootPart.Anchored = false
			end)
		end
		RunService.RenderStepped:Wait()
	end
end)

do -- Set checkpoint
	ConsoleMessage("Loading from file...")
	ReplayTable = ReplayDecode(GetReplayFile()) -- Decode replay from file
	if not ReplayTable then
		ReplayTable = {}
		ConsoleMessage("There is no replay folder for",PlaceId)
	end
end

ConsoleMessage("Tasability",Version,"loaded in",RoundNumber(tick()-ExecutionTick,2),"seconds")
ConsoleMessage("Type help to see all commands")