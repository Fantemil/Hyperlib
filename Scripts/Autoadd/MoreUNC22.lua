--[[ hello very cool incognito / solara (mostly incognito because solara has most of these functions, just not all) script showcase!! 
pls dont steal source code :( 
also join https://discord.gg/gYhqMRBeZV because yes    
]]
--[[
 math support update because math is kewl
 new update:
 table loop update!!
]]
if getgenv and getgenv().MoreUNC then return end

-- Definitions
local table = table.clone(table) -- Prevent modifications from other scripts
local debug = table.clone(debug) -- ^^^^
local bit32 = table.clone(bit32)
local bit = bit32
local os = table.clone(os)
local math = table.clone(math)
local utf8 = table.clone(utf8)
local string = table.clone(string)
local task = table.clone(task)

local game = game -- game is game
local oldGame = game

local Version = '1.1.6'

local isDragging = false -- rconsole
local dragStartPos = nil -- rconsole
local frameStartPos = nil -- rconsole

local Data = game:GetService("TeleportService"):GetLocalPlayerTeleportData()
local TeleportData
if Data and Data.MOREUNCSCRIPTQUEUE then
 TeleportData = Data.MOREUNCSCRIPTQUEUE
end
if TeleportData then
 local func = loadstring(TeleportData)
 local s, e = pcall(func)
 if not s then task.spawn(error, e) end
end


print = print
warn = warn
error = error
pcall = pcall
printidentity = printidentity
ipairs = ipairs
pairs = pairs
tostring = tostring
tonumber = tonumber
setmetatable = setmetatable
rawget = rawget
rawset = rawset
getmetatable = getmetatable
type = type
version = version

-- Services / Instances
local HttpService = game:GetService('HttpService');
local Log = game:GetService('LogService');

-- Load proprerties (CREDITS TO DEUCES ON DISCORD)
local API_Dump_Url = "https://raw.githubusercontent.com/MaximumADHD/Roblox-Client-Tracker/roblox/Mini-API-Dump.json"
local API_Dump = game:HttpGet(API_Dump_Url)
local Hidden = {}

for _, API_Class in pairs(HttpService:JSONDecode(API_Dump).Classes) do
    for _, Member in pairs(API_Class.Members) do
        if Member.MemberType == "Property" then
            local PropertyName = Member.Name

            local MemberTags = Member.Tags

            local Special

            if MemberTags then
                Special = table.find(MemberTags, "NotScriptable")
            end
            if Special then
                table.insert(Hidden, PropertyName)
            end
        end
    end
end

local vim = Instance.new("VirtualInputManager");

local DrawingDict = Instance.new("ScreenGui") -- For drawing.new

local ClipboardUI = Instance.new("ScreenGui") -- For setclipboard

local hui = Instance.new("Folder") -- For gethui
hui.Name = '\0'

local ClipboardBox = Instance.new('TextBox', ClipboardUI) -- For setclipboard
ClipboardBox.Position = UDim2.new(100, 0, 100, 0) -- VERY off screen

-- All the following are for rconsole
local Console = Instance.new("ScreenGui")
local ConsoleFrame = Instance.new("Frame")
local Topbar = Instance.new("Frame")
local _CORNER = Instance.new("UICorner")
local ConsoleCorner = Instance.new("UICorner")
local CornerHide = Instance.new("Frame")
local DontModify = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local CornerHide2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local ConsoleIcon = Instance.new("ImageLabel")
local Holder = Instance.new("ScrollingFrame")
local MessageTemplate = Instance.new("TextLabel")
local InputTemplate = Instance.new("TextBox")
local UIListLayout = Instance.new("UIListLayout")
local HolderPadding = Instance.new("UIPadding")

Console.Name = "Console"
Console.Parent = nil
Console.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ConsoleFrame.Name = "ConsoleFrame"
ConsoleFrame.Parent = Console
ConsoleFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleFrame.BorderSizePixel = 0
ConsoleFrame.Position = UDim2.new(0.0963890627, 0, 0.220791712, 0)
ConsoleFrame.Size = UDim2.new(0, 888, 0, 577)

Topbar.Name = "Topbar"
Topbar.Parent = ConsoleFrame
Topbar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0, 0, -0.000463640812, 0)
Topbar.Size = UDim2.new(1, 0, 0, 32)

_CORNER.Name = "_CORNER"
_CORNER.Parent = Topbar

ConsoleCorner.Name = "ConsoleCorner"
ConsoleCorner.Parent = ConsoleFrame

CornerHide.Name = "CornerHide"
CornerHide.Parent = ConsoleFrame
CornerHide.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CornerHide.BorderColor3 = Color3.fromRGB(0, 0, 0)
CornerHide.BorderSizePixel = 0
CornerHide.Position = UDim2.new(0, 0, 0.0280000009, 0)
CornerHide.Size = UDim2.new(1, 0, 0, 12)

DontModify.Name = "DontModify"
DontModify.Parent = ConsoleFrame
DontModify.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
DontModify.BorderColor3 = Color3.fromRGB(0, 0, 0)
DontModify.BorderSizePixel = 0
DontModify.Position = UDim2.new(0.98169291, 0, 0.0278581586, 0)
DontModify.Size = UDim2.new(-0.00675675692, 21, 0.972141862, 0)

UICorner.Parent = DontModify

CornerHide2.Name = "CornerHide2"
CornerHide2.Parent = ConsoleFrame
CornerHide2.AnchorPoint = Vector2.new(1, 0)
CornerHide2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
CornerHide2.BorderColor3 = Color3.fromRGB(0, 0, 0)
CornerHide2.BorderSizePixel = 0
CornerHide2.Position = UDim2.new(1, 0, 0.0450000018, 0)
CornerHide2.Size = UDim2.new(0, 9, 0.955023408, 0)

Title.Name = "Title"
Title.Parent = ConsoleFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0440017432, 0, 0, 0)
Title.Size = UDim2.new(0, 164, 0, 30)
Title.Font = Enum.Font.GothamMedium
Title.Text = "rconsole title"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Title
UIPadding.PaddingTop = UDim.new(0, 5)

ConsoleIcon.Name = "ConsoleIcon"
ConsoleIcon.Parent = ConsoleFrame
ConsoleIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ConsoleIcon.BackgroundTransparency = 1.000
ConsoleIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
ConsoleIcon.BorderSizePixel = 0
ConsoleIcon.Position = UDim2.new(0.00979213417, 0, 0.000874322082, 0)
ConsoleIcon.Size = UDim2.new(0, 31, 0, 31)
ConsoleIcon.Image = "http://www.roblox.com/asset/?id=11843683545"

Holder.Name = "Holder"
Holder.Parent = ConsoleFrame
Holder.Active = true
Holder.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Holder.BackgroundTransparency = 1.000
Holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0, 0, 0.054600548, 0)
Holder.Size = UDim2.new(1, 0, 0.945399463, 0)
Holder.ScrollBarThickness = 8
Holder.CanvasSize = UDim2.new(0,0,0,0)
Holder.AutomaticCanvasSize = Enum.AutomaticSize.XY

MessageTemplate.Name = "MessageTemplate"
MessageTemplate.Parent = Holder
MessageTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MessageTemplate.BackgroundTransparency = 1.000
MessageTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
MessageTemplate.BorderSizePixel = 0
MessageTemplate.Size = UDim2.new(0.9745, 0, 0.030000001, 0)
MessageTemplate.Visible = false
MessageTemplate.Font = Enum.Font.RobotoMono
MessageTemplate.Text = "TEMPLATE"
MessageTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageTemplate.TextSize = 20.000
MessageTemplate.TextXAlignment = Enum.TextXAlignment.Left
MessageTemplate.TextYAlignment = Enum.TextYAlignment.Top
MessageTemplate.RichText = true

UIListLayout.Parent = Holder
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)

HolderPadding.Name = "HolderPadding"
HolderPadding.Parent = Holder
HolderPadding.PaddingLeft = UDim.new(0, 15)
HolderPadding.PaddingTop = UDim.new(0, 15)

InputTemplate.Name = "InputTemplate"
InputTemplate.Parent = nil
InputTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
InputTemplate.BackgroundTransparency = 1.000
InputTemplate.BorderColor3 = Color3.fromRGB(0, 0, 0)
InputTemplate.BorderSizePixel = 0
InputTemplate.Size = UDim2.new(0.9745, 0, 0.030000001, 0)
InputTemplate.Visible = false
InputTemplate.RichText = true
InputTemplate.Font = Enum.Font.RobotoMono
InputTemplate.Text = ""
InputTemplate.PlaceholderText = ''
InputTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
InputTemplate.TextSize = 20.000
InputTemplate.TextXAlignment = Enum.TextXAlignment.Left
InputTemplate.TextYAlignment = Enum.TextYAlignment.Top

-- Variables
local Identity = -1
local active = true
-- Others
local oldLoader = loadstring
-- Empty Tables
local clonerefs = {}
local protecteduis = {}
local gc = {}
local Instances = {} -- for nil instances
local funcs = {} -- main table
local names = {} -- protected gui names
local cache = {} -- for cached instances
local Drawings = {} -- for cleardrawcache
-- Non empty tables
local colors = {
	BLACK = Color3.fromRGB(50, 50, 50),
	BLUE = Color3.fromRGB(0, 0, 204),
	GREEN = Color3.fromRGB(0, 255, 0),
	CYAN = Color3.fromRGB(0, 255, 255),
	RED = Color3.fromHex('#5A0101'),
	MAGENTA = Color3.fromRGB(255, 0, 255),
	BROWN = Color3.fromRGB(165, 42, 42),
	LIGHT_GRAY = Color3.fromRGB(211, 211, 211),
	DARK_GRAY = Color3.fromRGB(169, 169, 169),
	LIGHT_BLUE = Color3.fromRGB(173, 216, 230),
	LIGHT_GREEN = Color3.fromRGB(144, 238, 144),
	LIGHT_CYAN = Color3.fromRGB(224, 255, 255),
	LIGHT_RED = Color3.fromRGB(255, 204, 203),
	LIGHT_MAGENTA = Color3.fromRGB(255, 182, 193),
	YELLOW = Color3.fromRGB(255, 255, 0),
	WHITE = Color3.fromRGB(255, 255, 255),
	ORANGE = Color3.fromRGB(255, 186, 12)
}
local patterns = {
    { pattern = '(%w+)%s*%+=%s*(%w+)', format = "%s = %s + %s" },
    { pattern = '(%w+)%s*%-=%s*(%w+)', format = "%s = %s - %s" },
    { pattern = '(%w+)%s*%*=%s*(%w+)', format = "%s = %s * %s" },
    { pattern = '(%w+)%s*/=%s*(%w+)', format = "%s = %s / %s" }
}
local patterns2 = {
 { pattern = 'for%s+(%w+)%s*,%s*(%w+)%s*in%s*(%w+)%s*do', format = "for %s, %s in pairs(%s) do" }
}
local renv = {
    print, warn, error, assert, collectgarbage, load, require, select, tonumber, tostring, type, xpcall, pairs, next, ipairs,
    newproxy, rawequal, rawget, rawset, rawlen, setmetatable, PluginManager,
    coroutine.create, coroutine.resume, coroutine.running, coroutine.status, coroutine.wrap, coroutine.yield,
    bit32.arshift, bit32.band, bit32.bnot, bit32.bor, bit32.btest, bit32.extract, bit32.lshift, bit32.replace, bit32.rshift, bit32.xor,
    math.abs, math.acos, math.asin, math.atan, math.atan2, math.ceil, math.cos, math.cosh, math.deg, math.exp, math.floor, math.fmod, math.frexp, math.ldexp, math.log, math.log10, math.max, math.min, math.modf, math.pow, math.rad, math.random, math.randomseed, math.sin, math.sinh, math.sqrt, math.tan, math.tanh,
    string.byte, string.char, string.find, string.format, string.gmatch, string.gsub, string.len, string.lower, string.match, string.pack, string.packsize, string.rep, string.reverse, string.sub, string.unpack, string.upper,
    table.concat, table.insert, table.pack, table.remove, table.sort, table.unpack,
    utf8.char, utf8.charpattern, utf8.codepoint, utf8.codes, utf8.len, utf8.nfdnormalize, utf8.nfcnormalize,
    os.clock, os.date, os.difftime, os.time,
    delay, elapsedTime, require, spawn, tick, time, typeof, UserSettings, version, wait,
    task.defer, task.delay, task.spawn, task.wait,
    debug.traceback, debug.profilebegin, debug.profileend
}
local keys={[0x08]=Enum.KeyCode.Backspace,[0x09]=Enum.KeyCode.Tab,[0x0C]=Enum.KeyCode.Clear,[0x0D]=Enum.KeyCode.Return,[0x10]=Enum.KeyCode.LeftShift,[0x11]=Enum.KeyCode.LeftControl,[0x12]=Enum.KeyCode.LeftAlt,[0x13]=Enum.KeyCode.Pause,[0x14]=Enum.KeyCode.CapsLock,[0x1B]=Enum.KeyCode.Escape,[0x20]=Enum.KeyCode.Space,[0x21]=Enum.KeyCode.PageUp,[0x22]=Enum.KeyCode.PageDown,[0x23]=Enum.KeyCode.End,[0x24]=Enum.KeyCode.Home,[0x2D]=Enum.KeyCode.Insert,[0x2E]=Enum.KeyCode.Delete,[0x30]=Enum.KeyCode.Zero,[0x31]=Enum.KeyCode.One,[0x32]=Enum.KeyCode.Two,[0x33]=Enum.KeyCode.Three,[0x34]=Enum.KeyCode.Four,[0x35]=Enum.KeyCode.Five,[0x36]=Enum.KeyCode.Six,[0x37]=Enum.KeyCode.Seven,[0x38]=Enum.KeyCode.Eight,[0x39]=Enum.KeyCode.Nine,[0x41]=Enum.KeyCode.A,[0x42]=Enum.KeyCode.B,[0x43]=Enum.KeyCode.C,[0x44]=Enum.KeyCode.D,[0x45]=Enum.KeyCode.E,[0x46]=Enum.KeyCode.F,[0x47]=Enum.KeyCode.G,[0x48]=Enum.KeyCode.H,[0x49]=Enum.KeyCode.I,[0x4A]=Enum.KeyCode.J,[0x4B]=Enum.KeyCode.K,[0x4C]=Enum.KeyCode.L,[0x4D]=Enum.KeyCode.M,[0x4E]=Enum.KeyCode.N,[0x4F]=Enum.KeyCode.O,[0x50]=Enum.KeyCode.P,[0x51]=Enum.KeyCode.Q,[0x52]=Enum.KeyCode.R,[0x53]=Enum.KeyCode.S,[0x54]=Enum.KeyCode.T,[0x55]=Enum.KeyCode.U,[0x56]=Enum.KeyCode.V,[0x57]=Enum.KeyCode.W,[0x58]=Enum.KeyCode.X,[0x59]=Enum.KeyCode.Y,[0x5A]=Enum.KeyCode.Z,[0x5D]=Enum.KeyCode.Menu,[0x60]=Enum.KeyCode.KeypadZero,[0x61]=Enum.KeyCode.KeypadOne,[0x62]=Enum.KeyCode.KeypadTwo,[0x63]=Enum.KeyCode.KeypadThree,[0x64]=Enum.KeyCode.KeypadFour,[0x65]=Enum.KeyCode.KeypadFive,[0x66]=Enum.KeyCode.KeypadSix,[0x67]=Enum.KeyCode.KeypadSeven,[0x68]=Enum.KeyCode.KeypadEight,[0x69]=Enum.KeyCode.KeypadNine,[0x6A]=Enum.KeyCode.KeypadMultiply,[0x6B]=Enum.KeyCode.KeypadPlus,[0x6D]=Enum.KeyCode.KeypadMinus,[0x6E]=Enum.KeyCode.KeypadPeriod,[0x6F]=Enum.KeyCode.KeypadDivide,[0x70]=Enum.KeyCode.F1,[0x71]=Enum.KeyCode.F2,[0x72]=Enum.KeyCode.F3,[0x73]=Enum.KeyCode.F4,[0x74]=Enum.KeyCode.F5,[0x75]=Enum.KeyCode.F6,[0x76]=Enum.KeyCode.F7,[0x77]=Enum.KeyCode.F8,[0x78]=Enum.KeyCode.F9,[0x79]=Enum.KeyCode.F10,[0x7A]=Enum.KeyCode.F11,[0x7B]=Enum.KeyCode.F12,[0x90]=Enum.KeyCode.NumLock,[0x91]=Enum.KeyCode.ScrollLock,[0xBA]=Enum.KeyCode.Semicolon,[0xBB]=Enum.KeyCode.Equals,[0xBC]=Enum.KeyCode.Comma,[0xBD]=Enum.KeyCode.Minus,[0xBE]=Enum.KeyCode.Period,[0xBF]=Enum.KeyCode.Slash,[0xC0]=Enum.KeyCode.Backquote,[0xDB]=Enum.KeyCode.LeftBracket,[0xDD]=Enum.KeyCode.RightBracket,[0xDE]=Enum.KeyCode.Quote} -- for keypress
local Fonts = { -- Drawing.Fonts
 [0] = Enum.Font.Arial,
 [1] = Enum.Font.BuilderSans,
 [2] = Enum.Font.Gotham,
 [3] = Enum.Font.RobotoMono
}
-- rconsole
local MessageColor = colors['WHITE']
local ConsoleClone = nil
-- functions
local function Descendants(tbl)
    local descendants = {}
    
    local function process_table(subtbl, prefix)
        for k, v in pairs(subtbl) do
            local index = prefix and (prefix .. "." .. tostring(k)) or tostring(k)
            descendants[index] = v
            if type(v) == 'table' then
                process_table(v, index)
            else
                descendants[index] = v
            end
        end
    end

    if type(tbl) ~= 'table' then
        descendants[tostring(1)] = tbl
    else
        process_table(tbl, nil)
    end
    
    return descendants
end

local function rawlength(tbl)
 local a = 0
 for i, v in pairs(tbl) do
  a = a + 1
 end
 return a
end

local function ToPairsLoop(code)
    for _, p in ipairs(patterns2) do
        code = code:gsub(p.pattern, function(var1, var2, tbl)
            return p.format:format(var1, var2, tbl)
        end)
    end
    return code
end

local function SafeOverride(a, b, c) --[[ Index, Data, Should override ]]
    if getgenv()[a] and not c then return 1 end
    getgenv()[a] = b

    return 2
end

local function toluau(code)
    for _, p in ipairs(patterns) do
        code = code:gsub(p.pattern, function(var, value)
            return p.format:format(var, var, value)
        end)
    end
    code = ToPairsLoop(code)
    return code
end

local function handleInput(input, Object)
    if isDragging then
        local delta = input.Position - dragStartPos
        Object.Position = UDim2.new(
            frameStartPos.X.Scale, 
            frameStartPos.X.Offset + delta.X, 
            frameStartPos.Y.Scale, 
            frameStartPos.Y.Offset + delta.Y
        )
    end
end

local function startDrag(input, Object)
    isDragging = true
    dragStartPos = input.Position
    frameStartPos = Object.Position
    input.UserInputState = Enum.UserInputState.Begin
end

local function stopDrag(input)
    isDragging = false
    input.UserInputState = Enum.UserInputState.End
end

-- Main Functions
function QueueGetIdentity()
  printidentity()
  task.wait(.1)
  local messages = Log:GetLogHistory()
  local message;
  if not messages[#messages].message:match("Current identity is") then
   for i = #messages, 1, -1 do
    if messages[i].message:match("Current identity is %d") then
     message = messages[i].message
     break
    end
   end
  else
   message = messages[#messages].message:match('Current identity is %d'):gsub("Current identity is ", '')
  end
  Identity = tonumber(message)
end
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

-- Events
game.DescendantRemoving:Connect(function(des)
 table.insert(Instances, des)
 cache[des] = 'REMOVE'
end)
game.DescendantAdded:Connect(function(des)
 cache[des] = true
end)
game:GetService("UserInputService").WindowFocused:Connect(function()
 active = true
end)

game:GetService("UserInputService").WindowFocusReleased:Connect(function()
 active = false
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if not input then return end
    if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement and ConsoleClone then
        handleInput(input, ConsoleClone.ConsoleFrame)
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if not input then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        stopDrag(input)
    end
end)
-- Libraries
funcs.base64 = {}
funcs.crypt = {hex={},url={}}
funcs.syn = {}
funcs.syn_backup = {}
funcs.http = {}
funcs.Drawing = {}
funcs.cache = {}
funcs.string = string
funcs.debug = debug
funcs.debug.getinfo = function(t)
    local CurrentLine = tonumber(debug.info(t, 'l'))
    local Source = debug.info(t, 's')
    local name = debug.info(t, 'n')
    local numparams, isvrg = debug.info(t, 'a')
    if #name == 0 then name = nil end
    local a, b = debug.info(t, 'a')
    return {
     ['currentline'] = CurrentLine,
     ['source'] = Source,
     ['name'] = tostring(name),
     ['numparams'] = tonumber(numparams),
     ['is_vararg'] = isvrg and 1 or 0,
     ['short_src'] = tostring(Source:sub(1, 60)),
     ['what'] = Source == '[C]' and 'C' or 'Lua',
     ['func'] = t,
     ['nups'] = 0 -- i CANNOT make an upvalue thingy
     }
end

funcs.Drawing.Fonts = {
  ['UI'] = 0,
  ['System'] = 1,
  ['Plex'] = 2,
  ['Monospace'] = 3
}


local ClipboardQueue = Queue.new()
local ConsoleQueue = Queue.new()
local getgenv = getgenv or getfenv(2)
getgenv().getgenv = getgenv

-- [[ Functions ]]

--[[funcs.cloneref = function(a)
    if not clonerefs[a] then clonerefs[a] = {} end
    local Clone = {}

    local mt = {__type='Instance'} -- idk if this works ;(

    mt.__tostring = function()
        return a.Name
    end

    mt.__index = function(_, key)
        local thing = funcs.debug.getmetatable(a)[key]
        if type(thing) == 'function' then
            return function(...)
                return thing(a, ...)
            end
        else
            return thing
        end
    end
    mt.__newindex = function(_, key, value)
     a[key] = value
    end
    mt.__metatable = getmetatable(a)
    mt.__len = function(_)
     return error('attempt to get length of a userdata value')
    end

    setmetatable(Clone, mt)

    table.insert(clonerefs[a], Clone)

    return Clone
end
TEMPORARY REMOVED UNTIL WE FIND A FIX
]]

-- Thanks to xAPI for the following:

local Sandbox = loadstring(game:HttpGet("https://pastebin.com/raw/a0cuADU4"))()
funcs.string.dump = loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Function-Dumper-14820"))()
funcs.dumpstring = funcs.string.dump

-- // The rest is made by me.

funcs.compareinstances = function(a, b)
 if not clonerefs[a] then
  return a == b
 else
  if table.find(clonerefs[a], b) then return true end
 end
 return false
end

funcs.clonefunction = function(a)
 assert(type(a)=='function', 'Invalid parameter 1 to \'clonefunction\', function expected got ' .. typeof(a))

 return function(...)
  local Copy = Sandbox(a, {}, {}, {}, 0, {...})
  return Copy.return_value
 end
end

funcs.cache.iscached = function(thing)
 return cache[thing] ~= 'REMOVE' and thing:IsDescendantOf(game) or false -- If it's cache isnt 'REMOVE' and its a des of game (Usually always true) or if its cache is 'REMOVE' then its false.
end
funcs.cache.invalidate = function(thing)
 cache[thing] = 'REMOVE'
 thing.Parent = nil
end
funcs.cache.replace = function(a, b)
 if cache[a] then
  cache[a] = b
 end
 local n, p = a.Name, a.Parent -- name, parent
 b.Parent = p
 b.Name = n
 a.Parent = nil
end
funcs.deepclone = function(a)
 local Result = {}
 for i, v in pairs(a) do
  if type(v) == 'table' then
    Result[i] = funcs.deepclone(v)
  end
  Result[i] = v
 end
 return Result
end
--[[ The base64 functions were made by https://scriptblox.com/u/yofriendfromschool1 , Credits to him.]]
funcs.base64.encode = function(data)
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
end
funcs.base64.decode = function(data)
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

funcs.loadstring = function(code)
 local s1, val1 = pcall(function()
  return loadstring('local v1=15;v1+=1;return v1')()
 end)
 local s2, val2 = pcall(function()
  return loadstring('local v1={"a"};for i, v in v1 do return v end')()
 end)
 if val1 ~= 16 and val2 ~= 'a' then
  return oldLoader(toluau(code))
 else
  return oldLoader(code)
 end
end
funcs.getgenv = getgenv
funcs.crypt.base64 = funcs.base64
funcs.crypt.base64encode = funcs.base64.encode
funcs.crypt.base64decode = funcs.base64.decode
funcs.crypt.base64_encode = funcs.base64.encode
funcs.crypt.base64_decode = funcs.base64.decode
funcs.base64_encode = funcs.base64.encode
funcs.base64_decode = funcs.base64.decode

funcs.crypt.hex.encode = function(txt)
 txt = tostring(txt)
 local hex = ''
 for i = 1, #txt do
    hex = hex .. string.format("%02x", string.byte(txt, i))
 end
 return hex
end
funcs.crypt.hex.decode = function(hex)
    hex = tostring(hex)
    local text = ""
    for i = 1, #hex, 2 do
        local byte_str = string.sub(hex, i, i+1)
        local byte = tonumber(byte_str, 16)
        text = text .. string.char(byte)
    end
    return text
end
funcs.crypt.url.encode = function(a)
 return game:GetService("HttpService"):UrlEncode(a)
end
funcs.crypt.url.decode = function(a)
    a = tostring(a)
    a = string.gsub(a, "+", " ")
    a = string.gsub(a, "%%(%x%x)", function(hex)
        return string.char(tonumber(hex, 16))
    end)
    a = string.gsub(a, "\r\n", "\n")
    return a
end
funcs.crypt.generatekey = function(optionalSize)
 local key = ''
 local a = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
 for i = 1, optionalSize or 32 do local n = math.random(1, #a) key = key .. a:sub(n, n) end
 return funcs.base64.encode(key)
end
funcs.crypt.generatebytes = function(size)
 if type(size) ~= 'number' then return error('missing arguement #1 to \'generatebytes\' (number expected)') end
 return funcs.crypt.generatekey(size)
end
funcs.crypt.encrypt = function(a, b)
 local result = {}
 a = tostring(a) b = tostring(b)
 for i = 1, #a do
    local byte = string.byte(a, i)
    local keyByte = string.byte(b, (i - 1) % #b + 1)
    table.insert(result, string.char(bit32.bxor(byte, keyByte)))
 end
 return table.concat(result)
end
funcs.crypt.decrypt = funcs.crypt.encrypt
funcs.crypt.random = function(len)
 return funcs.crypt.generatekey(len)
end

funcs.isrbxactive = function()
 return active
end
funcs.isgameactive = funcs.isrbxactive
funcs.gethui = function()
 local s, H = pcall(function()
  return game:GetService("CoreGui").RobloxGui
 end)
 if H then
  if not hui.Parent then
    hui.Parent = H.Parent
  end
  return hui
 else
  if not hui.Parent then
    hui.Parent = game:GetService("Players").LocalPlayer.PlayerGui
  end
 end
 return hui
end
if getgenv().getrenv and #getgenv().getrenv() == 0 or not getgenv().getrenv then
 getgenv().getrenv = nil
 getgenv().getrenv = function() -- Override incognito's getrenv
  return renv -- couldn't think of a better way to implement it
 end
end
funcs.setclipboard = function(data)
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
end
funcs.syn.write_clipboard = funcs.setclipboard
funcs.toclipboard = funcs.setclipboard
funcs.writeclipboard = funcs.setclipboard
funcs.setrbxclipboard = funcs.setclipboard

funcs.isrenderobj = function(thing)
 return Drawings[thing] ~= nil
end
funcs.getrenderproperty = function(thing, prop)
 return thing[prop]
end
funcs.setrenderproperty = function(thing, prop, val)
 local success, err = pcall(function()
  thing[prop] = val
 end)
 if not success and err then warn(err) end
end

funcs.syn.protect_gui = function(gui)
 names[gui] = {name=gui.Name,parent=gui.Parent}
 protecteduis[gui] = gui
 gui.Name = funcs.crypt.random(64) -- 64 byte string, removed hashing cuz its useless lmao
 gui.Parent = gethui()
end
funcs.syn.unprotect_gui = function(gui)
 if names[gui] then gui.Name = names[gui].name gui.Parent = names[gui].parent end protecteduis[gui] = nil
end
funcs.syn.protectgui = funcs.syn.protect_gui
funcs.syn.unprotectgui = funcs.syn.unprotect_gui
funcs.syn.secure_call = function(func) -- Does not do a secure call, just pcalls it.
 return pcall(func)
end


funcs.isreadonly = function(tbl)
 if type(tbl) ~= 'table' then return false end
 return table.isfrozen(tbl)
end
funcs.setreadonly = function(tbl, cond)
 if cond then
  table.freeze(tbl)
 else
  return funcs.deepclone(tbl)
 end
end
funcs.httpget = function(url)
 return game:HttpGet(url)
end
funcs.httppost = function(url, body, contenttype)
 return game:HttpPostAsync(url, body, contenttype)
end
funcs.request = function(args)
 local Body = nil
 local Timeout = 0
 local function callback(success, body)
  Body = body
  Body['Success'] = success
 end
 HttpService:RequestInternal(args):Start(callback)
 while not Body and Timeout < 10 do
  task.wait(.1)
  Timeout = Timeout + .1
 end
 return Body
end
funcs.mouse1click = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 0, true, game, false)
 task.wait()
 vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
funcs.mouse2click = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 1, true, game, false)
 task.wait()
 vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
funcs.mouse1press = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 0, true, game, false)
end
funcs.mouse1release = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 0, false, game, false)
end
funcs.mouse2press = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 1, true, game, false)
end
funcs.mouse2release = function(x, y)
 x = x or 0
 y = y or 0
 vim:SendMouseButtonEvent(x, y, 1, false, game, false)
end
funcs.mousescroll = function(x, y, a)
 x = x or 0
 y = y or 0
 a = a and true or false
 vim:SendMouseWheelEvent(x, y, a, game)
end
funcs.keyclick = function(key)
 if typeof(key) == 'number' then
 if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
 vim:SendKeyEvent(true, keys[key], false, game)
 task.wait()
 vim:SendKeyEvent(false, keys[key], false, game)
 elseif typeof(Key) == 'EnumItem' then
  vim:SendKeyEvent(true, key, false, game)
  task.wait()
  vim:SendKeyEvent(false, key, false, game)
 end
end
funcs.keypress = function(key)
 if typeof(key) == 'number' then
 if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
 vim:SendKeyEvent(true, keys[key], false, game)
 elseif typeof(Key) == 'EnumItem' then
  vim:SendKeyEvent(true, key, false, game)
 end
end
funcs.keyrelease = function(key)
 if typeof(key) == 'number' then
 if not keys[key] then return error("Key "..tostring(key) .. ' not found!') end
 vim:SendKeyEvent(false, keys[key], false, game)
 elseif typeof(Key) == 'EnumItem' then
  vim:SendKeyEvent(false, key, false, game)
 end
end
funcs.mousemoverel = function(relx, rely)
 local Pos = workspace.CurrentCamera.ViewportSize
 relx = relx or 0
 rely = rely or 0
 local x = Pos.X * relx
 local y = Pos.Y * rely
 vim:SendMouseMoveEvent(x, y, game)
end
funcs.mousemoveabs = function(x, y)
 x = x or 0 y = y or 0
 vim:SendMouseMoveEvent(x, y, game)
end

funcs.newcclosure = function(f)
 local a = coroutine.wrap(function(...)
  local b = {coroutine.yield()}
  while true do
   b = {coroutine.yield(f(table.unpack(b)))}
  end
 end)
 a()
 return a
end -- Credits to myworld AND EMPER for this
funcs.iscclosure = function(fnc) return debug.info(fnc, 's') == '[C]' end
funcs.islclosure = function(func) return not funcs.iscclosure(func) end
funcs.isexecutorclosure = function(fnc)
    local found = false
    for i, v in pairs(getgenv()) do
     if v == fnc then return true end
    end
    for i = 1, math.huge do
        local s, env = pcall(getfenv, i)
        if not s or found then break end
        if type(env) == "table" then
            for _, v in pairs(env) do
                if v == fnc then
                    found = true
                    break
                end
            end
        end
        if found then break end
    end

    return found
end
funcs.newlclosure = function(fnc)
 return function(...) return fnc(...) end
end
funcs.clonefunction = funcs.newlclosure
funcs.is_l_closure = funcs.islclosure
funcs.is_executor_closure = funcs.isexecutorclosure
funcs.isourclosure = funcs.isexecutorclosure
funcs.isexecclosure = funcs.isexecutorclosure
funcs.checkclosure = funcs.isourclosure

--[[ File system is something i do not know how to implement in roblox lua.
UPDATE AT 18/5/2024:
I figured out i can use temp file system with tables.
]]
local files = {}

local function startswith(a, b)
 return a:sub(1, #b) == b
end
local function endswith(hello, lo) 
    return hello:sub(#hello - #lo + 1, #hello) == lo
end

funcs.writefile = function(path, content)
 local Path = path:split('/')
 local CurrentPath = {}
 for i = 1, #Path do
  local a = Path[i]
  CurrentPath[i] = a
  if not files[a] and i ~= #Path then
   files[table.concat(CurrentPath, '/')] = {}
   files[table.concat(CurrentPath, '/') .. '/'] = files[table.concat(CurrentPath, '/')]
  elseif i == #Path then
   files[table.concat(CurrentPath, '/')] = tostring(content)
  end
 end
end
funcs.makefolder = function(path)
 files[path] = {}
 files[path .. '/'] = files[path]
end
funcs.isfolder = function(path)
 return type(files[path]) == 'table'
end
funcs.isfile = function(path)
 return type(files[path]) == 'string'
end
funcs.readfile = function(path)
 return files[path]
end
funcs.appendfile = function(path, text2)
 funcs.writefile(path, funcs.readfile(path) .. text2)
end
funcs.loadfile = function(path)
 local content = funcs.readfile(path)
 if not content then error('File \'' .. tostring(path) .. '\' does not exist.') return '' end
 local s, func = pcall(function()
  return loadstring(content)
 end)
 return func, not s and func or nil
end
funcs.delfolder = function(path)
 local f = files[path]
 if type(f) == 'table' then files[path] = nil end
end
funcs.delfile = function(path)
 local f = files[path]
 if type(f) == 'string' then files[path] = nil end
end
funcs.listfiles = function(path)
    if not path or path == '' then
     local Files = {}
     for i, v in pairs(files) do
      if #i:split('/') == 1 then table.insert(Files, i) end
     end
     return Files
    end
    if type(files[path]) ~= 'table' then return error(path .. ' is not a folder.') end
    local Files = {}
    for i, v in pairs(files) do
      if startswith(i, path .. '/') and not endswith(i, '/') and i ~= path and #i:split('/') == (#path:split('/') + 1) then table.insert(Files, i) end
    end
    return Files
end

funcs.http.request = funcs.request
funcs.syn.crypt = funcs.crypt
funcs.syn.crypto = funcs.crypt
funcs.syn_backup = funcs.syn


funcs.getexecutorname = function()
 return 'MoreUNC', Version
end
funcs.identifyexecutor = funcs.getexecutorname
funcs.http_request = getgenv().request or funcs.request
funcs.getscripts = function()
 local a = {};for i, v in pairs(game:GetDescendants()) do if v:IsA("LocalScript") or v:IsA("ModuleScript") then table.insert(a, v) end end return a
end
funcs.get_scripts = function()
 local a = {};for i, v in pairs(game:GetDescendants()) do if v:IsA("LocalScript") or v:IsA("ModuleScript") then table.insert(a, v) end end return a
end
funcs.getmodules = function()
 local a = {};for i, v in pairs(game:GetDescendants()) do if v:IsA("ModuleScript") then table.insert(a, v) end end return a
end
funcs.getloadedmodules = funcs.getmodules
funcs.make_readonly = funcs.setreadonly
funcs.makereadonly = funcs.setreadonly
funcs.base64encode = funcs.crypt.base64encode
funcs.base64decode = funcs.crypt.base64decode
funcs.clonefunc = funcs.clonefunction
funcs.setsimulationradius = function(Distance, MaxDistance)
 local LocalPlayer = game:GetService("Players").LocalPlayer
 assert(type(Distance)=='number','Invalid arguement #1 to \'setsimulationradius\', Number expected got ' .. type(Distance))
 LocalPlayer.SimulationRadius = type(Distance) == 'number' and Distance or LocalPlayer.SimulationRadius
 if MaxDistance then
  assert(type(MaxDistance)=='number','Invalid arguement #2 to \'setsimulationradius\', Number expected got ' .. type(MaxDistance))
  LocalPlayer.MaxSimulationDistance = MaxDistance
 end
end
funcs.getinstances = function()
 return game:GetDescendants()
end
funcs.getnilinstances = function()
 return Instances
end
funcs.iswriteable = function(tbl)
 return not table.isfrozen(tbl)
end
funcs.makewriteable = function(tbl)
 return funcs.setreadonly(tbl, false)
end
funcs.isscriptable = function(self, prop)
 return table.find(Hidden, prop) == nil
end
funcs.getrunningscripts = function()
 local scripts = {}
 for _, v in pairs(funcs.getinstances()) do
  if v:IsA("LocalScript") and v.Enabled then table.insert(scripts, v) end
 end
 return scripts
end
funcs.fireproximityprompt = function(p)
 local Hold, Distance, Enabled, Thing, CFrame1= p.HoldDuration, p.MaxActivationDistance, p.Enabled, p.RequiresLineOfSight, nil
 -- Make it activatable from anywhere
 p.MaxActivationDistance = math.huge
 -- Make it take 0 seconds to activate
 p.HoldDuration = 0
 -- Make it enabled (so you can activate it)
 p.Enabled = true
 -- Disable RequiresLineOfSight
 p.RequiresLineOfSight = false
 -- Show the thingy
 local function get()
  local classes = {'BasePart', 'Part', 'MeshPart'}
  for _, v in pairs(classes) do
   if p:FindFirstAncestorOfClass(v) then
    return p:FindFirstAncestorOfClass(v)
   end
  end
 end
 local a = get()
 if not a then
  local parent = p.Parent
  p.Parent = Instance.new("Part", workspace)
  a = p.Parent
 end
 CFrame1 = a.CFrame
 a.CFrame = game:GetService("Players").LocalPlayer.Character.Head.CFrame + game:GetService("Players").LocalPlayer.Character.Head.CFrame.LookVector * 2
 task.wait()
 p:InputHoldBegin()
 task.wait()
 p:InputHoldEnd()
 p.HoldDuration = Hold
 p.MaxActivationDistance = Distance
 p.Enabled = Enabled
 p.RequiresLineOfSight = Thing
 a.CFrame = CFrame1
 p.Parent = parent or p.Parent
end
funcs.firetouchinterest = function(toTouch, TouchWith, on)
 if on == 0 then return end
 if toTouch.ClassName == 'TouchTransmitter' then
   local function get()
    local classes = {'BasePart', 'Part', 'MeshPart'}
    for _, v in pairs(classes) do
    if toTouch:FindFirstAncestorOfClass(v) then
     return toTouch:FindFirstAncestorOfClass(v)
    end
   end
  end
  toTouch = get()
 end
 local cf = toTouch.CFrame
 local anc = toTouch.CanCollide
 toTouch.CanCollide = false
 toTouch.CFrame = TouchWith.CFrame
 task.wait()
 toTouch.CFrame = cf
 toTouch.CanCollide = anc
end -- i admit its kinda bad dont fucking attack me

-- SHA256 Hashing
local function str2hexa(a)return string.gsub(a,".",function(b)return string.format("%02x",string.byte(b))end)end;local function num2s(c,d)local a=""for e=1,d do local f=c%256;a=string.char(f)..a;c=(c-f)/256 end;return a end;local function s232num(a,e)local d=0;for g=e,e+3 do d=d*256+string.byte(a,g)end;return d end;local function preproc(h,i)local j=64-(i+9)%64;i=num2s(8*i,8)h=h.."\128"..string.rep("\0",j)..i;assert(#h%64==0)return h end;local function k(h,e,l)local m={}local n={0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}for g=1,16 do m[g]=s232num(h,e+(g-1)*4)end;for g=17,64 do local o=m[g-15]local p=bit.bxor(bit.rrotate(o,7),bit.rrotate(o,18),bit.rshift(o,3))o=m[g-2]local q=bit.bxor(bit.rrotate(o,17),bit.rrotate(o,19),bit.rshift(o,10))m[g]=(m[g-16]+p+m[g-7]+q)%2^32 end;local r,s,b,t,u,v,w,x=l[1],l[2],l[3],l[4],l[5],l[6],l[7],l[8]for e=1,64 do local p=bit.bxor(bit.rrotate(r,2),bit.rrotate(r,13),bit.rrotate(r,22))local y=bit.bxor(bit.band(r,s),bit.band(r,b),bit.band(s,b))local z=(p+y)%2^32;local q=bit.bxor(bit.rrotate(u,6),bit.rrotate(u,11),bit.rrotate(u,25))local A=bit.bxor(bit.band(u,v),bit.band(bit.bnot(u),w))local B=(x+q+A+n[e]+m[e])%2^32;x=w;w=v;v=u;u=(t+B)%2^32;t=b;b=s;s=r;r=(B+z)%2^32 end;l[1]=(l[1]+r)%2^32;l[2]=(l[2]+s)%2^32;l[3]=(l[3]+b)%2^32;l[4]=(l[4]+t)%2^32;l[5]=(l[5]+u)%2^32;l[6]=(l[6]+v)%2^32;l[7]=(l[7]+w)%2^32;l[8]=(l[8]+x)%2^32 end;funcs.crypt.hash=function(h)h=preproc(h,#h)local l={0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19}for e=1,#h,64 do k(h,e,l)end;return str2hexa(num2s(l[1],4)..num2s(l[2],4)..num2s(l[3],4)..num2s(l[4],4)..num2s(l[5],4)..num2s(l[6],4)..num2s(l[7],4)..num2s(l[8],4))end

funcs.Drawing.new = function(Type) -- Drawing.new
    local baseProps = {
     Visible = false,
     Color = Color3.new(0,0,0),
     ClassName = nil
    }
    if Type == 'Line' then
        local a = Instance.new("Frame", Instance.new("ScreenGui", DrawingDict))
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Thickness = 1,
            From = Vector2.new(0, 0),
            To = Vector2.new(0, 0),
            Transparency = 0,
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateLine = function(self)
             if not a then return end
             local from = self.From
             local to = self.To
             local distance = (to - from).Magnitude
             local angle = math.deg(math.atan2(to.Y - from.Y, to.X - from.X))

             a.Size = UDim2.new(0, distance, 0, self.Thickness)
             a.Position = UDim2.new(0, from.X, 0, from.Y)
             a.Rotation = angle
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.Size = UDim2.new(0, (self.To - self.From).Magnitude, 0, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
            elseif key == 'Transparency' and typeof(value) == 'number' and value <= 1 then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'From' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            elseif key == 'To' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateLine()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Square' then
        local a = Instance.new("Frame", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        local b = Instance.new("UIStroke", a)
        b.Color = Color3.fromRGB(255, 255, 255)
        b.Enabled = true

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Size = Vector2.new(0,0),
            Position = Vector2.new(0, 0),
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateSquare = function(self)
             if not a then return end
             a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                b.Enabled = not value
                a.BackgroundTransparency = value and 0 or 1
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                b.Color = value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            elseif key == 'Size' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateSquare()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Circle' then
        local a = Instance.new("Frame", Instance.new("ScreenGui", DrawingDict))
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

        local meta = baseProps
        meta.ClassName = Type
        meta.__index = {
            Thickness = 1,
            Filled = false,
            NumSides = 0,
            Radius = 1,
            Position = Vector2.new(0, 0),
            Transparency = 0,
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateCircle = function(self)
             if not b or not a then return end
             a.Size = UDim2.new(0, self.Radius, 0, self.Radius)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             b.Enabled = not self
             b.Color = self.Color
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Thickness' and typeof(value) == 'number' then
                rawset(self, key, value)
                b.Thickness = value
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
                a.BackgroundColor3 = value
                a.Color = value
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
                a.BackgroundTransparency = 1 - value
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'Radius' and typeof(value) == 'number' then
                rawset(self, key, value)
                self:updateCircle()
            elseif key == 'NumSides' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Filled' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                self:updateCircle()
            end
        end
        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Text' then
        local a = Instance.new("TextLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0
        a.TextStrokeColor3 = Color3.new(0,0,0)
        a.TextStrokeTransparency = 1

        local meta = baseProps
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
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy() 
            end,
            updateText = function(self)
             if not a then return end
             a.TextScaled = true
             a.Size = UDim2.new(0, self.Size * 3, 0, self.Size / 2)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             a.Text = self.Text
             a.Font = Fonts[self.Font]
             a.Visible = self.Visible
             a.TextColor3 = self.Color
             a.TextTransparency = 1 - self.Transparency
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
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Text' and typeof(value) == 'string' then
                rawset(self, key, value)
            elseif key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
                a.Visible = value
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Outline' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Center' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'OutlineColor' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Font' and typeof(value) == 'number' then
                rawset(self, key, value)
            end
            self:updateText()
        end

        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    elseif Type == 'Image' then
        local a = Instance.new("ImageLabel", DrawingDict)
        a.Visible = false
        a.Size = UDim2.new(0, 0, 0, 0)
        a.ImageColor3 = Color3.fromRGB(255,255,255)
        a.BackgroundTransparency = 1
        a.BorderSizePixel = 0

        local meta = baseProps
        meta.ClassName = 'Image'
        meta.__index = {
            Text = '',
            Transparency = 0,
            Size = Vector2.new(0, 0),
            Position = Vector2.new(0,0),
            Color = Color3.fromRGB(255, 255, 255),
            Image = '',
            Remove = function()
               for i, v in pairs(Drawings) do if v == meta then Drawings[i] = nil end end
               a:Destroy()
            end,
            Destroy = function()
               for i, v in pairs(Drawings) do
                if v == meta then Drawings[i] = nil end
               end
               a:Destroy()
            end,
            updateImage = function(self)
             if not a then return end
             a.Size = UDim2.new(0, self.Size.X, 0, self.Size.Y)
             a.Position = UDim2.new(0, self.Position.X, 0, self.Position.Y)
             a.Visible = self.Visible
             a.ImageColor3 = self.Color
             a.ImageTransparency = 1 - self.Transparency
             a.BorderSizePixel = self.Outline and 1 or 0
             a.Image = self.Image
            end
        }

        meta.__newindex = function(self, key, value)
            if not self then return end
            if key == 'Visible' and typeof(value) == 'boolean' then
                rawset(self, key, value)
            elseif key == 'Color' and typeof(value) == 'Color3' then
                rawset(self, key, value)
            elseif key == 'Transparency' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Position' and typeof(value) == 'Vector2' then
                rawset(self, key, value)
            elseif key == 'Size' and typeof(value) == 'number' then
                rawset(self, key, value)
            elseif key == 'Image' and typeof(value) == 'string' then
                rawset(self, key, value)
            else
             return
            end
            self:updateImage()
        end

        local meta1 = setmetatable({}, meta)
        Drawings[meta1] = meta1
        return meta1
    end
end

funcs.randomstring = funcs.crypt.random
funcs.getprotecteduis = function()
 return protecteduis
end
funcs.getprotectedguis = funcs.getprotecteduis
funcs.cleardrawcache = function()
 for _, v in pairs(Drawings) do
  v:Remove()
 end
 table.clear(Drawings)
end
funcs.checkcaller = function()
 local info = debug.info(getgenv, 'slnaf')
 return debug.info(1, 'slnaf')==info
end
funcs.getthreadcontext = function() -- funny little way of getting this
 if coroutine.isyieldable(coroutine.running()) then -- check if u can use task.wait or not
  QueueGetIdentity()
  task.wait(.1)
  return tonumber(Identity)
 else
  if Identity == -1 then
   task.spawn(QueueGetIdentity)
   return 1
  else
   return tonumber(Identity)
  end
  return tonumber(Identity)
 end
end
funcs.getthreadidentity = funcs.getthreadcontext
funcs.getidentity = funcs.getthreadcontext
funcs.rconsolecreate = function()
    local Clone = Console:Clone()
    Clone.Parent = gethui()
    ConsoleClone = Clone
    ConsoleClone.ConsoleFrame.Topbar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            startDrag(input, ConsoleClone.ConsoleFrame)
        end
    end)
end
funcs.rconsoledestroy = function()
    if ConsoleClone then ConsoleClone:Destroy() end
    ConsoleClone = nil
end
funcs.rconsoleprint = function(msg, cc)
    local CONSOLE = ConsoleClone or Console
	repeat task.wait() until ConsoleQueue:IsEmpty()
	msg = tostring(msg)
	local last_color = nil

	msg = msg:gsub('@@(%a+)@@', function(color)
		local colorName = color:upper()
		local rgbColor = colors[colorName]
		if rgbColor then
			local fontTag = string.format('<font color="rgb(%d,%d,%d)">', rgbColor.R * 255, rgbColor.G * 255, rgbColor.B * 255)
			local result = last_color and '</font>' .. fontTag or fontTag
			last_color = colorName
			return result
		else
			return '@@' .. color .. '@@'
		end
	end)

	if last_color then
		msg = msg .. '</font>'
	end
	
	if msg:match('<font color=".+">.+</font>') then
	 if msg:match('<font color=".+"></font>') == msg then MessageColor = colors[last_color] return end
	end
	
	local tmp = MessageTemplate:Clone()
	tmp.Parent = CONSOLE.ConsoleFrame.Holder
	tmp.Text = msg
	tmp.Visible = true
	tmp.TextColor3 = cc and cc or MessageColor
end
funcs.rconsoleinput = function()
    local CONSOLE = ConsoleClone or Console
    repeat task.wait() until ConsoleQueue:IsEmpty()
    ConsoleQueue:Queue('input')
    local box = InputTemplate:Clone()
    local val
    box.Parent = CONSOLE.ConsoleFrame.Holder
    box.Visible = true
    box.TextEditable = true
    box.TextColor3 = MessageColor

    box.FocusLost:Connect(function(a)
     if not a then return end
     val = box.Text
     ConsoleQueue:Update()
    end)

    local FOCUSED = false
    while true do
     if box.Text:sub(#box.Text, #box.Text) == '_' or box.Text == '' or not box:IsFocused() then
        box.TextColor3 = Color3.fromRGB(255, 255, 255)
        box.Text = box.Text .. '_'
        
        for _ = 1, 100 do
            task.wait(1/2)
            if box:IsFocused() then
                FOCUSED = true
                box.TextColor3 = MessageColor
                break
            end
            box.Text = box.Text:sub(#box.Text, #box.Text) == '_' and box.Text:sub(#box.Text-1, #box.Text-1) or box.Text .. '_'
        end
        if FOCUSED then break end
     else
        task.wait(0.1)
     end
    end
    repeat task.wait() until val
    return val
end
funcs.rconsolename = function(a)
 if ConsoleClone then
  ConsoleClone.ConsoleFrame.Title.Text = a
 else
  Console.ConsoleFrame.Title.Text = a
 end
end
funcs.printconsole = function(msg, r, g, b)
 r = r or 0
 g = g or 0
 b = b or 0
 rconsoleprint(msg, Color3.fromRGB(r, g, b))
end
funcs.rconsoleclear = function()
 if ConsoleClone then
 for i, v in pairs(ConsoleClone.ConsoleFrame.Holder:GetChildren()) do
  if v.ClassName == 'TextLabel' or v.ClassName == 'TextBox' then v:Destroy() end
 end
 else
  for i, v in pairs(Console.ConsoleFrame.Holder:GetChildren()) do
   if v.ClassName == 'TextLabel' or v.ClassName == 'TextBox' then v:Destroy() end
  end
 end
end
funcs.rconsoleinfo = function(a)
 rconsoleprint('[INFO]: ' .. tostring(a))
end
funcs.rconsolewarn = function(a)
 rconsoleprint('[*]: ' .. tostring(a))
end
funcs.rconsoleerr = function(a)
 local clr = MessageColor
 local oldColor
 for i, v in pairs(colors) do
  if clr == v then oldColor = i break end
 end
 rconsoleprint(string.format('[@@RED@@*@@%s@@]: %s', oldColor, tostring(a)))
end
funcs.rconsoleinputasync = funcs.rconsoleinput
funcs.consolecreate = funcs.rconsolecreate
funcs.consoleclear = funcs.rconsoleclear
funcs.consoledestroy = funcs.rconsoledestroy
funcs.consoleinput = funcs.rconsoleinput
funcs.rconsolesettitle = funcs.rconsolename
funcs.consolesettitle = funcs.rconsolename

funcs.queue_on_teleport = function(scripttoexec) -- WARNING: MUST HAVE MOREUNC IN AUTO EXECUTE FOR THIS TO WORK.
 local newTPService = {
  __index = function(self, key)
   if key == 'Teleport' then
    return function(gameId, player, teleportData, loadScreen)
      teleportData = {teleportData, MOREUNCSCRIPTQUEUE=scripttoexec}
      return oldGame:GetService("TeleportService"):Teleport(gameId, player, teleportData, loadScreen)
    end
   end
  end
 }
 local gameMeta = {
  __index = function(self, key)
    if key == 'GetService' then
     return function(name)
      if name == 'TeleportService' then return newTPService end
     end
    elseif key == 'TeleportService' then return newTPService end
    return game[key]
  end,
  __metatable = 'The metatable is protected'
 }
 getgenv().game = setmetatable({}, gameMeta)
end
funcs.queueonteleport = funcs.queue_on_teleport

local Count = 0
local Total = 0
print('Running MoreUNC | Roblox', version(), ' | Discord https://discord.gg/gYhqMRBeZV')

local funcs2 = {}
for i, _ in pairs(funcs) do
 table.insert(funcs2, i)
end
table.sort(funcs2, function(a, b)
 return string.byte(a:lower())<string.byte(b:lower())
end)

for i, v in pairs(funcs2) do
 if not getgenv()[i] then
  Total = Total + 1
 end
end

for _, i in pairs(funcs2) do
 local v = funcs[i]
 local Result = SafeOverride(i, v)
 if Result == 2 then Count = Count + 1 end
 local str = Result == 1 and ('[â] %s already exists.'):format(i) or Result == 2 and ("[â] Added %s%s to the global environment. (%d/%d)"):format(i, type(v)=='function' and '()' or '', Count, Total) or Result ~= 1 and Result ~= 2 and ("[â] Unknown result for %s."):format(i)
 print(str)
end

syn.protect_gui(DrawingDict)
syn.protect_gui(ClipboardUI)
print('Done adding functions!')
QueueGetIdentity()
getgenv().MoreUNC = true