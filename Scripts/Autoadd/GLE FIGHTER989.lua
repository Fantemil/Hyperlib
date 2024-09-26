--[[ Options ]]--
_G.CharacterBug = false --Set to true if your uppertorso floats when you use the script with R15.
_G.GodMode = true --Set to true if you want godmode.
_G.R6 = true --Set to true if you wanna enable R15 to R6 when your R15.
--[[Reanimate]]--
loadstring(game:HttpGet("https://paste.ee/r/uk77k/0"))()
-----------------
repeat wait() until _G.MSG ~= nil
repeat wait() until _G.MSG.Text == ""
-----------------
 
function LoadLibrary(a)
local t = {}
 
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------JSON Functions Begin----------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
 
--JSON Encoder and Parser for Lua 5.1
-- 
--Copyright 2007 Shaun Brown (http://www.chipmunkav.com)
--All Rights Reserved.
 
--Permission is hereby granted, free of charge, to any person
--obtaining a copy of this software to deal in the Software without
--restriction, including without limitation the rights to use,
--copy, modify, merge, publish, distribute, sublicense, and/or
--sell copies of the Software, and to permit persons to whom the
--Software is furnished to do so, subject to the following conditions:
 
--The above copyright notice and this permission notice shall be
--included in all copies or substantial portions of the Software.
--If you find this software useful please give www.chipmunkav.com a mention.
 
--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
--EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
--OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
--IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR
--ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF
--CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
--CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
local string = string
local math = math
local table = table
local error = error
local tonumber = tonumber
local tostring = tostring
local type = type
local setmetatable = setmetatable
local pairs = pairs
local ipairs = ipairs
local assert = assert
 
 
local StringBuilder = {
buffer = {}
}
 
function StringBuilder:New()
local o = {}
setmetatable(o, self)
self.__index = self
o.buffer = {}
return o
end
 
function StringBuilder:Append(s)
self.buffer[#self.buffer+1] = s
end
 
function StringBuilder:ToString()
return table.concat(self.buffer)
end
 
local JsonWriter = {
backslashes = {
['\b'] = "\\b",
['\t'] = "\\t",
['\n'] = "\\n",
['\f'] = "\\f",
['\r'] = "\\r",
['"'] = "\\\"",
['\\'] = "\\\\",
['/'] = "\\/"
}
}
 
function JsonWriter:New()
local o = {}
o.writer = StringBuilder:New()
setmetatable(o, self)
self.__index = self
return o
end
 
function JsonWriter:Append(s)
self.writer:Append(s)
end
 
function JsonWriter:ToString()
return self.writer:ToString()
end
 
function JsonWriter:Write(o)
local t = type(o)
if t == "nil" then
self:WriteNil()
elseif t == "boolean" then
self:WriteString(o)
elseif t == "number" then
self:WriteString(o)
elseif t == "string" then
self:ParseString(o)
elseif t == "table" then
self:WriteTable(o)
elseif t == "function" then
self:WriteFunction(o)
elseif t == "thread" then
self:WriteError(o)
elseif t == "userdata" then
self:WriteError(o)
end
end
 
function JsonWriter:WriteNil()
self:Append("null")
end
 
function JsonWriter:WriteString(o)
self:Append(tostring(o))
end
 
function JsonWriter:ParseString(s)
self:Append('"')
self:Append(string.gsub(s, "[%z%c\\\"/]", function(n)
local c = self.backslashes[n]
if c then return c end
return string.format("\\u%.4X", string.byte(n))
end))
self:Append('"')
end
 
function JsonWriter:IsArray(t)
local count = 0
local isindex = function(k)
if type(k) == "number" and k > 0 then
if math.floor(k) == k then
return true
end
end
return false
end
for k,v in pairs(t) do
if not isindex(k) then
return false, '{', '}'
else
count = math.max(count, k)
end
end
return true, '[', ']', count
end
 
function JsonWriter:WriteTable(t)
local ba, st, et, n = self:IsArray(t)
self:Append(st)
if ba then
for i = 1, n do
self:Write(t[i])
if i < n then
self:Append(',')
end
end
else
local first = true;
for k, v in pairs(t) do
if not first then
self:Append(',')
end
first = false;
self:ParseString(k)
self:Append(':')
self:Write(v)
end
end
self:Append(et)
end
 
function JsonWriter:WriteError(o)
error(string.format(
"Encoding of %s unsupported",
tostring(o)))
end
 
function JsonWriter:WriteFunction(o)
if o == Null then
self:WriteNil()
else
self:WriteError(o)
end
end
 
local StringReader = {
s = "",
i = 0
}
 
function StringReader:New(s)
local o = {}
setmetatable(o, self)
self.__index = self
o.s = s or o.s
return o
end
 
function StringReader:Peek()
local i = self.i + 1
if i <= #self.s then
return string.sub(self.s, i, i)
end
return nil
end
 
function StringReader:Next()
self.i = self.i+1
if self.i <= #self.s then
return string.sub(self.s, self.i, self.i)
end
return nil
end
 
function StringReader:All()
return self.s
end
 
local JsonReader = {
escapes = {
['t'] = '\t',
['n'] = '\n',
['f'] = '\f',
['r'] = '\r',
['b'] = '\b',
}
}
 
function JsonReader:New(s)
local o = {}
o.reader = StringReader:New(s)
setmetatable(o, self)
self.__index = self
return o;
end
 
function JsonReader:Read()
self:SkipWhiteSpace()
local peek = self:Peek()
if peek == nil then
error(string.format(
"Nil string: '%s'",
self:All()))
elseif peek == '{' then
return self:ReadObject()
elseif peek == '[' then
return self:ReadArray()
elseif peek == '"' then
return self:ReadString()
elseif string.find(peek, "[%+%-%d]") then
return self:ReadNumber()
elseif peek == 't' then
return self:ReadTrue()
elseif peek == 'f' then
return self:ReadFalse()
elseif peek == 'n' then
return self:ReadNull()
elseif peek == '/' then
self:ReadComment()
return self:Read()
else
return nil
end
end
 
function JsonReader:ReadTrue()
self:TestReservedWord{'t','r','u','e'}
return true
end
 
function JsonReader:ReadFalse()
self:TestReservedWord{'f','a','l','s','e'}
return false
end
 
function JsonReader:ReadNull()
self:TestReservedWord{'n','u','l','l'}
return nil
end
 
function JsonReader:TestReservedWord(t)
for i, v in ipairs(t) do
if self:Next() ~= v then
error(string.format(
"Error reading '%s': %s",
table.concat(t),
self:All()))
end
end
end
 
function JsonReader:ReadNumber()
local result = self:Next()
local peek = self:Peek()
while peek ~= nil and string.find(
peek,
"[%+%-%d%.eE]") do
result = result .. self:Next()
peek = self:Peek()
end
result = tonumber(result)
if result == nil then
error(string.format(
"Invalid number: '%s'",
result))
else
return result
end
end
 
function JsonReader:ReadString()
local result = ""
assert(self:Next() == '"')
while self:Peek() ~= '"' do
local ch = self:Next()
if ch == '\\' then
ch = self:Next()
if self.escapes[ch] then
ch = self.escapes[ch]
end
end
result = result .. ch
end
assert(self:Next() == '"')
local fromunicode = function(m)
return string.char(tonumber(m, 16))
end
return string.gsub(
result,
"u%x%x(%x%x)",
fromunicode)
end
 
function JsonReader:ReadComment()
assert(self:Next() == '/')
local second = self:Next()
if second == '/' then
self:ReadSingleLineComment()
elseif second == '*' then
self:ReadBlockComment()
else
error(string.format(
"Invalid comment: %s",
self:All()))
end
end
 
function JsonReader:ReadBlockComment()
local done = false
while not done do
local ch = self:Next()
if ch == '*' and self:Peek() == '/' then
done = true
end
if not done and
ch == '/' and
self:Peek() == "*" then
error(string.format(
"Invalid comment: %s, '/*' illegal.",
self:All()))
end
end
self:Next()
end
 
function JsonReader:ReadSingleLineComment()
local ch = self:Next()
while ch ~= '\r' and ch ~= '\n' do
ch = self:Next()
end
end
 
function JsonReader:ReadArray()
local result = {}
assert(self:Next() == '[')
local done = false
if self:Peek() == ']' then
done = true;
end
while not done do
local item = self:Read()
result[#result+1] = item
self:SkipWhiteSpace()
if self:Peek() == ']' then
done = true
end
if not done then
local ch = self:Next()
if ch ~= ',' then
error(string.format(
"Invalid array: '%s' due to: '%s'",
self:All(), ch))
end
end
end
assert(']' == self:Next())
return result
end
 
function JsonReader:ReadObject()
local result = {}
assert(self:Next() == '{')
local done = false
if self:Peek() == '}' then
done = true
end
while not done do
local key = self:Read()
if type(key) ~= "string" then
error(string.format(
"Invalid non-string object key: %s",
key))
end
self:SkipWhiteSpace()
local ch = self:Next()
if ch ~= ':' then
error(string.format(
"Invalid object: '%s' due to: '%s'",
self:All(),
ch))
end
self:SkipWhiteSpace()
local val = self:Read()
result[key] = val
self:SkipWhiteSpace()
if self:Peek() == '}' then
done = true
end
if not done then
ch = self:Next()
if ch ~= ',' then
error(string.format(
"Invalid array: '%s' near: '%s'",
self:All(),
ch))
end
end
end
assert(self:Next() == "}")
return result
end
 
function JsonReader:SkipWhiteSpace()
local p = self:Peek()
while p ~= nil and string.find(p, "[%s/]") do
if p == '/' then
self:ReadComment()
else
self:Next()
end
p = self:Peek()
end
end
 
function JsonReader:Peek()
return self.reader:Peek()
end
 
function JsonReader:Next()
return self.reader:Next()
end
 
function JsonReader:All()
return self.reader:All()
end
 
function Encode(o)
local writer = JsonWriter:New()
writer:Write(o)
return writer:ToString()
end
 
function Decode(s)
local reader = JsonReader:New(s)
return reader:Read()
end
 
function Null()
return Null
end
-------------------- End JSON Parser ------------------------
 
t.DecodeJSON = function(jsonString)
pcall(function() warn("RbxUtility.DecodeJSON is deprecated, please use Game:GetService('HttpService'):JSONDecode() instead.") end)
 
if type(jsonString) == "string" then
return Decode(jsonString)
end
print("RbxUtil.DecodeJSON expects string argument!")
return nil
end
 
t.EncodeJSON = function(jsonTable)
pcall(function() warn("RbxUtility.EncodeJSON is deprecated, please use Game:GetService('HttpService'):JSONEncode() instead.") end)
return Encode(jsonTable)
end
 
 
 
 
 
 
 
 
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--------------------------------------------Terrain Utilities Begin-----------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--makes a wedge at location x, y, z
--sets cell x, y, z to default material if parameter is provided, if not sets cell x, y, z to be whatever material it previously w
--returns true if made a wedge, false if the cell remains a block
t.MakeWedge = function(x, y, z, defaultmaterial)
return game:GetService("Terrain"):AutoWedgeCell(x,y,z)
end
 
t.SelectTerrainRegion = function(regionToSelect, color, selectEmptyCells, selectionParent)
local terrain = game:GetService("Workspace"):FindFirstChild("Terrain")
if not terrain then return end
 
assert(regionToSelect)
assert(color)
 
if not type(regionToSelect) == "Region3" then
error("regionToSelect (first arg), should be of type Region3, but is type",type(regionToSelect))
end
if not type(color) == "BrickColor" then
error("color (second arg), should be of type BrickColor, but is type",type(color))
end
 
-- frequently used terrain calls (speeds up call, no lookup necessary)
local GetCell = terrain.GetCell
local WorldToCellPreferSolid = terrain.WorldToCellPreferSolid
local CellCenterToWorld = terrain.CellCenterToWorld
local emptyMaterial = Enum.CellMaterial.Empty
 
-- container for all adornments, passed back to user
local selectionContainer = Instance.new("Model")
selectionContainer.Name = "SelectionContainer"
selectionContainer.Archivable = false
if selectionParent then
selectionContainer.Parent = selectionParent
else
selectionContainer.Parent = game:GetService("Workspace")
end
 
local updateSelection = nil -- function we return to allow user to update selection
local currentKeepAliveTag = nil -- a tag that determines whether adorns should be destroyed
local aliveCounter = 0 -- helper for currentKeepAliveTag
local lastRegion = nil -- used to stop updates that do nothing
local adornments = {} -- contains all adornments
local reusableAdorns = {}
 
local selectionPart = Instance.new("Part")
selectionPart.Name = "SelectionPart"
selectionPart.Transparency = 1
selectionPart.Anchored = true
selectionPart.Locked = true
selectionPart.CanCollide = false
selectionPart.Size = Vector3.new(4.2,4.2,4.2)
 
local selectionBox = Instance.new("SelectionBox")
 
-- srs translation from region3 to region3int16
local function Region3ToRegion3int16(region3)
local theLowVec = region3.CFrame.p - (region3.Size/2) + Vector3.new(2,2,2)
local lowCell = WorldToCellPreferSolid(terrain,theLowVec)
 
local theHighVec = region3.CFrame.p + (region3.Size/2) - Vector3.new(2,2,2)
local highCell = WorldToCellPreferSolid(terrain, theHighVec)
 
local highIntVec = Vector3int16.new(highCell.x,highCell.y,highCell.z)
local lowIntVec = Vector3int16.new(lowCell.x,lowCell.y,lowCell.z)
 
return Region3int16.new(lowIntVec,highIntVec)
end
 
-- helper function that creates the basis for a selection box
function createAdornment(theColor)
local selectionPartClone = nil
local selectionBoxClone = nil
 
if #reusableAdorns > 0 then
selectionPartClone = reusableAdorns[1]["part"]
selectionBoxClone = reusableAdorns[1]["box"]
table.remove(reusableAdorns,1)
 
selectionBoxClone.Visible = true
else
selectionPartClone = selectionPart:Clone()
selectionPartClone.Archivable = false
 
selectionBoxClone = selectionBox:Clone()
selectionBoxClone.Archivable = false
 
selectionBoxClone.Adornee = selectionPartClone
selectionBoxClone.Parent = selectionContainer
 
selectionBoxClone.Adornee = selectionPartClone
 
selectionBoxClone.Parent = selectionContainer
end
 
if theColor then
selectionBoxClone.Color = theColor
end
 
return selectionPartClone, selectionBoxClone
end
 
-- iterates through all current adornments and deletes any that don't have latest tag
function cleanUpAdornments()
for cellPos, adornTable in pairs(adornments) do
 
if adornTable.KeepAlive ~= currentKeepAliveTag then -- old news, we should get rid of this
adornTable.SelectionBox.Visible = false
table.insert(reusableAdorns,{part = adornTable.SelectionPart, box = adornTable.SelectionBox})
adornments[cellPos] = nil
end
end
end
 
-- helper function to update tag
function incrementAliveCounter()
aliveCounter = aliveCounter + 1
if aliveCounter > 1000000 then
aliveCounter = 0
end
return aliveCounter
end
 
-- finds full cells in region and adorns each cell with a box, with the argument color
function adornFullCellsInRegion(region, color)
local regionBegin = region.CFrame.p - (region.Size/2) + Vector3.new(2,2,2)
local regionEnd = region.CFrame.p + (region.Size/2) - Vector3.new(2,2,2)
 
local cellPosBegin = WorldToCellPreferSolid(terrain, regionBegin)
local cellPosEnd = WorldToCellPreferSolid(terrain, regionEnd)
 
currentKeepAliveTag = incrementAliveCounter()
for y = cellPosBegin.y, cellPosEnd.y do
for z = cellPosBegin.z, cellPosEnd.z do
for x = cellPosBegin.x, cellPosEnd.x do
local cellMaterial = GetCell(terrain, x, y, z)
 
if cellMaterial ~= emptyMaterial then
local cframePos = CellCenterToWorld(terrain, x, y, z)
local cellPos = Vector3int16.new(x,y,z)
 
local updated = false
for cellPosAdorn, adornTable in pairs(adornments) do
if cellPosAdorn == cellPos then
adornTable.KeepAlive = currentKeepAliveTag
if color then
adornTable.SelectionBox.Color = color
end
updated = true
break
end
end
 
if not updated then
local selectionPart, selectionBox = createAdornment(color)
selectionPart.Size = Vector3.new(4,4,4)
selectionPart.CFrame = CFrame.new(cframePos)
local adornTable = {SelectionPart = selectionPart, SelectionBox = selectionBox, KeepAlive = currentKeepAliveTag}
adornments[cellPos] = adornTable
end
end
end
end
end
cleanUpAdornments()
end
 
 
------------------------------------- setup code ------------------------------
lastRegion = regionToSelect
 
if selectEmptyCells then -- use one big selection to represent the area selected
local selectionPart, selectionBox = createAdornment(color)
 
selectionPart.Size = regionToSelect.Size
selectionPart.CFrame = regionToSelect.CFrame
 
adornments.SelectionPart = selectionPart
adornments.SelectionBox = selectionBox
 
updateSelection =
function (newRegion, color)
if newRegion and newRegion ~= lastRegion then
lastRegion = newRegion
selectionPart.Size = newRegion.Size
selectionPart.CFrame = newRegion.CFrame
end
if color then
selectionBox.Color = color
end
end
else -- use individual cell adorns to represent the area selected
adornFullCellsInRegion(regionToSelect, color)
updateSelection =
function (newRegion, color)
if newRegion and newRegion ~= lastRegion then
lastRegion = newRegion
adornFullCellsInRegion(newRegion, color)
end
end
 
end
 
local destroyFunc = function()
updateSelection = nil
if selectionContainer then selectionContainer:Destroy() end
adornments = nil
end
 
return updateSelection, destroyFunc
end
 
-----------------------------Terrain Utilities End-----------------------------
 
 
 
 
 
 
 
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------Signal class begin------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--[[
A 'Signal' object identical to the internal RBXScriptSignal object in it's public API and semantics. This function
can be used to create "custom events" for user-made code.
API:
Method :connect( function handler )
Arguments: The function to connect to.
Returns: A new connection object which can be used to disconnect the connection
Description: Connects this signal to the function specified by |handler|. That is, when |fire( ... )| is called for
the signal the |handler| will be called with the arguments given to |fire( ... )|. Note, the functions
connected to a signal are called in NO PARTICULAR ORDER, so connecting one function after another does
NOT mean that the first will be called before the second as a result of a call to |fire|.
 
Method :disconnect()
Arguments: None
Returns: None
Description: Disconnects all of the functions connected to this signal.
 
Method :fire( ... )
Arguments: Any arguments are accepted
Returns: None
Description: Calls all of the currently connected functions with the given arguments.
 
Method :wait()
Arguments: None
Returns: The arguments given to fire
Description: This call blocks until
]]
 
function t.CreateSignal()
local this = {}
 
local mBindableEvent = Instance.new('BindableEvent')
local mAllCns = {} --all connection objects returned by mBindableEvent::connect
 
--main functions
function this:connect(func)
if self ~= this then error("connect must be called with `:`, not `.`", 2) end
if type(func) ~= 'function' then
error("Argument #1 of connect must be a function, got a "..type(func), 2)
end
local cn = mBindableEvent.Event:Connect(func)
mAllCns[cn] = true
local pubCn = {}
function pubCn:disconnect()
cn:Disconnect()
mAllCns[cn] = nil
end
pubCn.Disconnect = pubCn.disconnect
 
return pubCn
end
 
function this:disconnect()
if self ~= this then error("disconnect must be called with `:`, not `.`", 2) end
for cn, _ in pairs(mAllCns) do
cn:Disconnect()
mAllCns[cn] = nil
end
end
 
function this:wait()
if self ~= this then error("wait must be called with `:`, not `.`", 2) end
return mBindableEvent.Event:Wait()
end
 
function this:fire(...)
if self ~= this then error("fire must be called with `:`, not `.`", 2) end
mBindableEvent:Fire(...)
end
 
this.Connect = this.connect
this.Disconnect = this.disconnect
this.Wait = this.wait
this.Fire = this.fire
 
return this
end
 
------------------------------------------------- Sigal class End ------------------------------------------------------
 
 
 
 
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------Create Function Begins---------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
--[[
A "Create" function for easy creation of Roblox instances. The function accepts a string which is the classname of
the object to be created. The function then returns another function which either accepts accepts no arguments, in
which case it simply creates an object of the given type, or a table argument that may contain several types of data,
in which case it mutates the object in varying ways depending on the nature of the aggregate data. These are the
type of data and what operation each will perform:
1) A string key mapping to some value:
Key-Value pairs in this form will be treated as properties of the object, and will be assigned in NO PARTICULAR
ORDER. If the order in which properties is assigned matter, then they must be assigned somewhere else than the
|Create| call's body.
 
2) An integral key mapping to another Instance:
Normal numeric keys mapping to Instances will be treated as children if the object being created, and will be
parented to it. This allows nice recursive calls to Create to create a whole hierarchy of objects without a
need for temporary variables to store references to those objects.
 
3) A key which is a value returned from Create.Event( eventname ), and a value which is a function function
The Create.E( string ) function provides a limited way to connect to signals inside of a Create hierarchy
for those who really want such a functionality. The name of the event whose name is passed to
Create.E( string )
 
4) A key which is the Create function itself, and a value which is a function
The function will be run with the argument of the object itself after all other initialization of the object is
done by create. This provides a way to do arbitrary things involving the object from withing the create
hierarchy.
Note: This function is called SYNCHRONOUSLY, that means that you should only so initialization in
it, not stuff which requires waiting, as the Create call will block until it returns. While waiting in the
constructor callback function is possible, it is probably not a good design choice.
Note: Since the constructor function is called after all other initialization, a Create block cannot have two
constructor functions, as it would not be possible to call both of them last, also, this would be unnecessary.
 
 
Some example usages:
 
A simple example which uses the Create function to create a model object and assign two of it's properties.
local model = Create'Model'{
Name = 'A New model',
Parent = game.Workspace,
}
 
 
An example where a larger hierarchy of object is made. After the call the hierarchy will look like this:
Model_Container
|-ObjectValue
| |
| `-BoolValueChild
`-IntValue
 
local model = Create'Model'{
Name = 'Model_Container',
Create'ObjectValue'{
Create'BoolValue'{
Name = 'BoolValueChild',
},
},
Create'IntValue'{},
}
 
 
An example using the event syntax:
 
local part = Create'Part'{
[Create.E'Touched'] = function(part)
print("I was touched by "..part.Name)
end,
}
 
 
An example using the general constructor syntax:
 
local model = Create'Part'{
[Create] = function(this)
print("Constructor running!")
this.Name = GetGlobalFoosAndBars(this)
end,
}
 
 
Note: It is also perfectly legal to save a reference to the function returned by a call Create, this will not cause
any unexpected behavior. EG:
local partCreatingFunction = Create'Part'
local part = partCreatingFunction()
]]
 
--the Create function need to be created as a functor, not a function, in order to support the Create.E syntax, so it
--will be created in several steps rather than as a single function declaration.
local function Create_PrivImpl(objectType)
if type(objectType) ~= 'string' then
error("Argument of Create must be a string", 2)
end
--return the proxy function that gives us the nice Create'string'{data} syntax
--The first function call is a function call using Lua's single-string-argument syntax
--The second function call is using Lua's single-table-argument syntax
--Both can be chained together for the nice effect.
return function(dat)
--default to nothing, to handle the no argument given case
dat = dat or {}
 
--make the object to mutate
local obj = Instance.new(objectType)
local parent = nil
 
--stored constructor function to be called after other initialization
local ctor = nil
 
for k, v in pairs(dat) do
--add property
if type(k) == 'string' then
if k == 'Parent' then
-- Parent should always be set last, setting the Parent of a new object
-- immediately makes performance worse for all subsequent property updates.
parent = v
else
obj[k] = v
end
 
 
--add child
elseif type(k) == 'number' then
if type(v) ~= 'userdata' then
error("Bad entry in Create body: Numeric keys must be paired with children, got a: "..type(v), 2)
end
v.Parent = obj
 
 
--event connect
elseif type(k) == 'table' and k.__eventname then
if type(v) ~= 'function' then
error("Bad entry in Create body: Key `[Create.E\'"..k.__eventname.."\']` must have a function value\
got: "..tostring(v), 2)
end
obj[k.__eventname]:connect(v)
 
 
--define constructor function
elseif k == t.Create then
if type(v) ~= 'function' then
error("Bad entry in Create body: Key `[Create]` should be paired with a constructor function, \
got: "..tostring(v), 2)
elseif ctor then
--ctor already exists, only one allowed
error("Bad entry in Create body: Only one constructor function is allowed", 2)
end
ctor = v
 
 
else
error("Bad entry ("..tostring(k).." => "..tostring(v)..") in Create body", 2)
end
end
 
--apply constructor function if it exists
if ctor then
ctor(obj)
end
 
if parent then
obj.Parent = parent
end
 
--return the completed object
return obj
end
end
 
--now, create the functor:
t.Create = setmetatable({}, {__call = function(tb, ...) return Create_PrivImpl(...) end})
 
--and create the "Event.E" syntax stub. Really it's just a stub to construct a table which our Create
--function can recognize as special.
t.Create.E = function(eventName)
return {__eventname = eventName}
end
 
-------------------------------------------------Create function End----------------------------------------------------
 
 
 
 
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------Documentation Begin-----------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
 
t.Help =
function(funcNameOrFunc)
--input argument can be a string or a function. Should return a description (of arguments and expected side effects)
if funcNameOrFunc == "DecodeJSON" or funcNameOrFunc == t.DecodeJSON then
return "Function DecodeJSON. " ..
"Arguments: (string). " ..
"Side effect: returns a table with all parsed JSON values"
end
if funcNameOrFunc == "EncodeJSON" or funcNameOrFunc == t.EncodeJSON then
return "Function EncodeJSON. " ..
"Arguments: (table). " ..
"Side effect: returns a string composed of argument table in JSON data format"
end
if funcNameOrFunc == "MakeWedge" or funcNameOrFunc == t.MakeWedge then
return "Function MakeWedge. " ..
"Arguments: (x, y, z, [default material]). " ..
"Description: Makes a wedge at location x, y, z. Sets cell x, y, z to default material if "..
"parameter is provided, if not sets cell x, y, z to be whatever material it previously was. "..
"Returns true if made a wedge, false if the cell remains a block "
end
if funcNameOrFunc == "SelectTerrainRegion" or funcNameOrFunc == t.SelectTerrainRegion then
return "Function SelectTerrainRegion. " ..
"Arguments: (regionToSelect, color, selectEmptyCells, selectionParent). " ..
"Description: Selects all terrain via a series of selection boxes within the regionToSelect " ..
"(this should be a region3 value). The selection box color is detemined by the color argument " ..
"(should be a brickcolor value). SelectionParent is the parent that the selection model gets placed to (optional)." ..
"SelectEmptyCells is bool, when true will select all cells in the " ..
"region, otherwise we only select non-empty cells. Returns a function that can update the selection," ..
"arguments to said function are a new region3 to select, and the adornment color (color arg is optional). " ..
"Also returns a second function that takes no arguments and destroys the selection"
end
if funcNameOrFunc == "CreateSignal" or funcNameOrFunc == t.CreateSignal then
return "Function CreateSignal. "..
"Arguments: None. "..
"Returns: The newly created Signal object. This object is identical to the RBXScriptSignal class "..
"used for events in Objects, but is a Lua-side object so it can be used to create custom events in"..
"Lua code. "..
"Methods of the Signal object: :connect, :wait, :fire, :disconnect. "..
"For more info you can pass the method name to the Help function, or view the wiki page "..
"for this library. EG: Help('Signal:connect')."
end
if funcNameOrFunc == "Signal:connect" then
return "Method Signal:connect. "..
"Arguments: (function handler). "..
"Return: A connection object which can be used to disconnect the connection to this handler. "..
"Description: Connectes a handler function to this Signal, so that when |fire| is called the "..
"handler function will be called with the arguments passed to |fire|."
end
if funcNameOrFunc == "Signal:wait" then
return "Method Signal:wait. "..
"Arguments: None. "..
"Returns: The arguments passed to the next call to |fire|. "..
"Description: This call does not return until the next call to |fire| is made, at which point it "..
"will return the values which were passed as arguments to that |fire| call."
end
if funcNameOrFunc == "Signal:fire" then
return "Method Signal:fire. "..
"Arguments: Any number of arguments of any type. "..
"Returns: None. "..
"Description: This call will invoke any connected handler functions, and notify any waiting code "..
"attached to this Signal to continue, with the arguments passed to this function. Note: The calls "..
"to handlers are made asynchronously, so this call will return immediately regardless of how long "..
"it takes the connected handler functions to complete."
end
if funcNameOrFunc == "Signal:disconnect" then
return "Method Signal:disconnect. "..
"Arguments: None. "..
"Returns: None. "..
"Description: This call disconnects all handlers attacched to this function, note however, it "..
"does NOT make waiting code continue, as is the behavior of normal Roblox events. This method "..
"can also be called on the connection object which is returned from Signal:connect to only "..
"disconnect a single handler, as opposed to this method, which will disconnect all handlers."
end
if funcNameOrFunc == "Create" then
return "Function Create. "..
"Arguments: A table containing information about how to construct a collection of objects. "..
"Returns: The constructed objects. "..
"Descrition: Create is a very powerfull function, whose description is too long to fit here, and "..
"is best described via example, please see the wiki page for a description of how to use it."
end
end
 
--------------------------------------------Documentation Ends----------------------------------------------------------
 
return t
end
 
--[[ Name : Gale Fighter ]]--
-------------------------------------------------------
--A Collaboration Between makhail07 and KillerDarkness0105
 
--Base Animaion by makhail07, attacks by KillerDarkness0105
-------------------------------------------------------
 
 
local FavIDs = {
340106355, --Nefl Crystals
927529620, --Dimension
876981900, --Fantasy
398987889, --Ordinary Days
1117396305, --Oh wait, it's you.
885996042, --Action Winter Journey
919231299, --Sprawling Idiot Effigy
743466274, --Good Day Sunshine
727411183, --Knife Fight
1402748531, --The Earth Is Counting On You!
595230126 --Robot Language
}
 
 
 
--The reality of my life isn't real but a Universe -makhail07
wait(0.2)
local plr = game:GetService("Players").LocalPlayer
print('Local User is '..plr.Name)
print('Gale Fighter Loaded')
print('The Fighter that is as fast as wind, a true Fighter')
local char = plr.Character.NullwareReanim
local hum = char.Humanoid
local hed = char.Head
local root = char.HumanoidRootPart
local rootj = root.RootJoint
local tors = char.Torso
local ra = char["Right Arm"]
local la = char["Left Arm"]
local rl = char["Right Leg"]
local ll = char["Left Leg"]
local neck = tors["Neck"]
local mouse = plr:GetMouse()
local RootCF = CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)
local RHCF = CFrame.fromEulerAnglesXYZ(0, 1.6, 0)
local LHCF = CFrame.fromEulerAnglesXYZ(0, -1.6, 0)
local maincolor = BrickColor.new("Institutional white")
hum.MaxHealth = 200
hum.Health = 200
 
local hrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
 
hrp.Name = "HumanoidRootPart"
hrp.Transparency = 0.5
hrp.Anchored = false
if hrp:FindFirstChildOfClass("AlignPosition") then
hrp:FindFirstChildOfClass("AlignPosition"):Destroy()
end
if hrp:FindFirstChildOfClass("AlignOrientation") then
hrp:FindFirstChildOfClass("AlignOrientation"):Destroy()
end
local bp = Instance.new("BodyPosition", hrp)
bp.Position = hrp.Position
bp.D = 9999999
bp.P = 999999999999999
bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
local flinger = Instance.new("BodyAngularVelocity",hrp)
flinger.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
flinger.P = 1000000000000000000000000000
flinger.AngularVelocity = Vector3.new(10000,10000,10000)
 
spawn(function()
while game:GetService("RunService").Heartbeat:Wait() do
bp.Position = game:GetService("Players").LocalPlayer.Character["NullwareReanim"].Torso.Position
end
end)
 
-------------------------------------------------------
--Start Good Stuff--
-------------------------------------------------------
cam = game.Workspace.CurrentCamera
CF = CFrame.new
angles = CFrame.Angles
attack = false
Euler = CFrame.fromEulerAnglesXYZ
Rad = math.rad
IT = Instance.new
BrickC = BrickColor.new
Cos = math.cos
Acos = math.acos
Sin = math.sin
Asin = math.asin
Abs = math.abs
Mrandom = math.random
Floor = math.floor
-------------------------------------------------------
--End Good Stuff--
-------------------------------------------------------
necko = CF(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
RSH, LSH = nil, nil
RW = Instance.new("Weld")
LW = Instance.new("Weld")
RH = tors["Right Hip"]
LH = tors["Left Hip"]
RSH = tors["Right Shoulder"]
LSH = tors["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Name = "RW"
RW.Part0 = tors
RW.C0 = CF(1.5, 0.5, 0)
RW.C1 = CF(0, 0.5, 0)
RW.Part1 = ra
RW.Parent = tors
LW.Name = "LW"
LW.Part0 = tors
LW.C0 = CF(-1.5, 0.5, 0)
LW.C1 = CF(0, 0.5, 0)
LW.Part1 = la
LW.Parent = tors
vt = Vector3.new
Effects = {}
-------------------------------------------------------
--Start HeartBeat--
-------------------------------------------------------
ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
 
frame = 1 / 90
tf = 0
allowframeloss = false
tossremainder = false
 
 
lastframe = tick()
script.Heartbeat:Fire()
 
 
game:GetService("RunService").Heartbeat:connect(function(s, p)
tf = tf + s
if tf >= frame then
if allowframeloss then
script.Heartbeat:Fire()
lastframe = tick()
else
for i = 1, math.floor(tf / frame) do
script.Heartbeat:Fire()
end
lastframe = tick()
end
if tossremainder then
tf = 0
else
tf = tf - frame * math.floor(tf / frame)
end
end
end)
-------------------------------------------------------
--End HeartBeat--
-------------------------------------------------------
 
 
 
-------------------------------------------------------
--Start Combo Function--
-------------------------------------------------------
local comboing = false
local combohits = 0
local combotime = 0
local maxtime = 65
 
 
 
function sandbox(var,func)
local env = getfenv(func)
local newenv = setmetatable({},{
__index = function(self,k)
if k=="script" then
return var
else
return env[k]
end
end,
})
setfenv(func,newenv)
return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
comboframe = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
TextLabel3 = Instance.new("TextLabel")
comboframe.Name = "combinserter"
comboframe.Parent = mas
Frame1.Name = "combtimegui"
Frame1.Parent = comboframe
Frame1.Size = UDim2.new(0, 300, 0, 14)
Frame1.Position = UDim2.new(0, 900, 0.629999971, 0)
Frame1.BackgroundColor3 = Color3.new(0, 0, 0)
Frame1.BorderColor3 = Color3.new(0.0313726, 0.0470588, 0.0627451)
Frame1.BorderSizePixel = 5
Frame2.Name = "combtimeoverlay"
Frame2.Parent = Frame1
Frame2.Size = UDim2.new(0, 0, 0, 14)
Frame2.BackgroundColor3 = Color3.new(0, 1, 0)
Frame2.ZIndex = 2
TextLabel3.Parent = Frame2
TextLabel3.Transparency = 0
TextLabel3.Size = UDim2.new(0, 300, 0, 50)
TextLabel3.Text ="Hits: "..combohits
TextLabel3.Position = UDim2.new(0, 0, -5.5999999, 0)
TextLabel3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Bodoni
TextLabel3.FontSize = Enum.FontSize.Size60
TextLabel3.TextColor3 = Color3.new(0, 1, 0)
TextLabel3.TextStrokeTransparency = 0
gui = game:GetService("Players").LocalPlayer.PlayerGui
for i,v in pairs(mas:GetChildren()) do
v.Parent = game:GetService("Players").LocalPlayer.PlayerGui
pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
spawn(function()
pcall(v)
end)
end
 
 
 
 
 
coroutine.resume(coroutine.create(function()
while true do
wait()
 
 
if combotime>65 then
combotime = 65
end
 
 
 
 
 
if combotime>.1 and comboing == true then
TextLabel3.Transparency = 0
TextLabel3.TextStrokeTransparency = 0
TextLabel3.BackgroundTransparency = 1
Frame1.Transparency = 0
Frame2.Transparency = 0
TextLabel3.Text ="Hits: "..combohits
combotime = combotime - .34
Frame2.Size = Frame2.Size:lerp(UDim2.new(0, combotime/maxtime*300, 0, 14),0.42)
end
 
 
 
 
if combotime<.1 then
TextLabel3.BackgroundTransparency = 1
TextLabel3.Transparency = 1
TextLabel3.TextStrokeTransparency = 1
 
Frame2.Size = UDim2.new(0, 0, 0, 14)
combotime = 0
comboing = false
Frame1.Transparency = 1
Frame2.Transparency = 1
combohits = 0
 
end
end
end))
 
 
 
-------------------------------------------------------
--End Combo Function--
-------------------------------------------------------
 
-------------------------------------------------------
--Start Important Functions--
-------------------------------------------------------
function swait(num)
if num == 0 or num == nil then
game:service("RunService").Stepped:wait(0)
else
for i = 0, num do
game:service("RunService").Stepped:wait(0)
end
end
end
function thread(f)
coroutine.resume(coroutine.create(f))
end
function clerp(a, b, t)
local qa = {
QuaternionFromCFrame(a)
}
local qb = {
QuaternionFromCFrame(b)
}
local ax, ay, az = a.x, a.y, a.z
local bx, by, bz = b.x, b.y, b.z
local _t = 1 - t
return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end
function QuaternionFromCFrame(cf)
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
local trace = m00 + m11 + m22
if trace > 0 then
local s = math.sqrt(1 + trace)
local recip = 0.5 / s
return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
else
local i = 0
if m00 < m11 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then
i = 2
end
if i == 0 then
local s = math.sqrt(m00 - m11 - m22 + 1)
local recip = 0.5 / s
return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
elseif i == 1 then
local s = math.sqrt(m11 - m22 - m00 + 1)
local recip = 0.5 / s
return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
elseif i == 2 then
local s = math.sqrt(m22 - m00 - m11 + 1)
local recip = 0.5 / s
return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
end
end
end
function QuaternionToCFrame(px, py, pz, x, y, z, w)
local xs, ys, zs = x + x, y + y, z + z
local wx, wy, wz = w * xs, w * ys, w * zs
local xx = x * xs
local xy = x * ys
local xz = x * zs
local yy = y * ys
local yz = y * zs
local zz = z * zs
return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end
function QuaternionSlerp(a, b, t)
local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
local startInterp, finishInterp
if cosTheta >= 1.0E-4 then
if 1 - cosTheta > 1.0E-4 then
local theta = math.acos(cosTheta)
local invSinTheta = 1 / Sin(theta)
startInterp = Sin((1 - t) * theta) * invSinTheta
finishInterp = Sin(t * theta) * invSinTheta
else
startInterp = 1 - t
finishInterp = t
end
elseif 1 + cosTheta > 1.0E-4 then
local theta = math.acos(-cosTheta)
local invSinTheta = 1 / Sin(theta)
startInterp = Sin((t - 1) * theta) * invSinTheta
finishInterp = Sin(t * theta) * invSinTheta
else
startInterp = t - 1
finishInterp = t
end
return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end
function rayCast(Position, Direction, Range, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * (Range or 999.999)), Ignore)
end
local RbxUtility = LoadLibrary("RbxUtility")
local Create = RbxUtility.Create
 
-------------------------------------------------------
--Start Damage Function--
-------------------------------------------------------
 
-------------------------------------------------------
--End Damage Function--
-------------------------------------------------------
 
-------------------------------------------------------
--Start Damage Function Customization--
-------------------------------------------------------
function ShowDamage(Pos, Text, Time, Color)
local Rate = (1 / 30)
local Pos = (Pos or Vector3.new(0, 0, 0))
local Text = (Text or "")
local Time = (Time or 2)
local Color = (Color or Color3.new(1, 0, 1))
local EffectPart = CFuncs.Part.Create(workspace, "SmoothPlastic", 0, 1, BrickColor.new(Color), "Effect", Vector3.new(0, 0, 0))
EffectPart.Anchored = true
local BillboardGui = Create("BillboardGui"){
Size = UDim2.new(3, 0, 3, 0),
Adornee = EffectPart,
Parent = EffectPart,
}
local TextLabel = Create("TextLabel"){
BackgroundTransparency = 1,
Size = UDim2.new(1, 0, 1, 0),
Text = Text,
Font = "Bodoni",
TextColor3 = Color,
TextScaled = true,
TextStrokeColor3 = Color3.fromRGB(0,0,0),
Parent = BillboardGui,
}
game.Debris:AddItem(EffectPart, (Time))
EffectPart.Parent = game:GetService("Workspace")
delay(0, function()
local Frames = (Time / Rate)
for Frame = 1, Frames do
wait(Rate)
local Percent = (Frame / Frames)
EffectPart.CFrame = CFrame.new(Pos) + Vector3.new(0, Percent, 0)
TextLabel.TextTransparency = Percent
end
if EffectPart and EffectPart.Parent then
EffectPart:Destroy()
end
end)
end
-------------------------------------------------------
--End Damage Function Customization--
-------------------------------------------------------
 
CFuncs = {
Part = {
Create = function(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
local Part = Create("Part")({
Parent = Parent,
Reflectance = Reflectance,
Transparency = Transparency,
CanCollide = false,
Locked = true,
BrickColor = BrickColor.new(tostring(BColor)),
Name = Name,
Size = Size,
Material = Material
})
RemoveOutlines(Part)
return Part
end
},
Mesh = {
Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
local Msh = Create(Mesh)({
Parent = Part,
Offset = OffSet,
Scale = Scale
})
if Mesh == "SpecialMesh" then
Msh.MeshType = MeshType
Msh.MeshId = MeshId
end
return Msh
end
},
Mesh = {
Create = function(Mesh, Part, MeshType, MeshId, OffSet, Scale)
local Msh = Create(Mesh)({
Parent = Part,
Offset = OffSet,
Scale = Scale
})
if Mesh == "SpecialMesh" then
Msh.MeshType = MeshType
Msh.MeshId = MeshId
end
return Msh
end
},
Weld = {
Create = function(Parent, Part0, Part1, C0, C1)
local Weld = Create("Weld")({
Parent = Parent,
Part0 = Part0,
Part1 = Part1,
C0 = C0,
C1 = C1
})
return Weld
end
},
Sound = {
Create = function(id, par, vol, pit)
coroutine.resume(coroutine.create(function()
local S = Create("Sound")({
Volume = vol,
Pitch = pit or 1,
SoundId = id,
Parent = par or workspace
})
wait()
S:play()
game:GetService("Debris"):AddItem(S, 6)
end))
end
},
ParticleEmitter = {
Create = function(Parent, Color1, Color2, LightEmission, Size, Texture, Transparency, ZOffset, Accel, Drag, LockedToPart, VelocityInheritance, EmissionDirection, Enabled, LifeTime, Rate, Rotation, RotSpeed, Speed, VelocitySpread)
local fp = Create("ParticleEmitter")({
Parent = Parent,
Color = ColorSequence.new(Color1, Color2),
LightEmission = LightEmission,
Size = Size,
Texture = Texture,
Transparency = Transparency,
ZOffset = ZOffset,
Acceleration = Accel,
Drag = Drag,
LockedToPart = LockedToPart,
VelocityInheritance = VelocityInheritance,
EmissionDirection = EmissionDirection,
Enabled = Enabled,
Lifetime = LifeTime,
Rate = Rate,
Rotation = Rotation,
RotSpeed = RotSpeed,
Speed = Speed,
VelocitySpread = VelocitySpread
})
return fp
end
}
}
function RemoveOutlines(part)
part.TopSurface, part.BottomSurface, part.LeftSurface, part.RightSurface, part.FrontSurface, part.BackSurface = 10, 10, 10, 10, 10, 10
end
function CreatePart(FormFactor, Parent, Material, Reflectance, Transparency, BColor, Name, Size)
local Part = Create("Part")({
formFactor = FormFactor,
Parent = Parent,
Reflectance = Reflectance,
Transparency = Transparency,
CanCollide = false,
Locked = true,
BrickColor = BrickColor.new(tostring(BColor)),
Name = Name,
Size = Size,
Material = Material
})
RemoveOutlines(Part)
return Part
end
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
local Msh = Create(Mesh)({
Parent = Part,
Offset = OffSet,
Scale = Scale
})
if Mesh == "SpecialMesh" then
Msh.MeshType = MeshType
Msh.MeshId = MeshId
end
return Msh
end
function CreateWeld(Parent, Part0, Part1, C0, C1)
local Weld = Create("Weld")({
Parent = Parent,
Part0 = Part0,
Part1 = Part1,
C0 = C0,
C1 = C1
})
return Weld
end
 
 
-------------------------------------------------------
--Start Effect Function--
-------------------------------------------------------
EffectModel = Instance.new("Model", char)
Effects = {
Block = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
if Type == 1 or Type == nil then
table.insert(Effects, {
prt,
"Block1",
delay,
x3,
y3,
z3,
msh
})
elseif Type == 2 then
table.insert(Effects, {
prt,
"Block2",
delay,
x3,
y3,
z3,
msh
})
else
table.insert(Effects, {
prt,
"Block3",
delay,
x3,
y3,
z3,
msh
})
end
end
},
Sphere = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
},
Cylinder = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
},
Wave = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1 / 60, y1 / 60, z1 / 60))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3 / 60,
y3 / 60,
z3 / 60,
msh
})
end
},
Ring = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://3270017", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
},
Break = {
Create = function(brickcolor, cframe, x1, y1, z1)
local prt = CFuncs.Part.Create(EffectModel, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
prt.Anchored = true
prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
local num = math.random(10, 50) / 1000
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Shatter",
num,
prt.CFrame,
math.random() - math.random(),
0,
math.random(50, 100) / 100
})
end
},
Spiral = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://1051557", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
},
Push = {
Create = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CFuncs.Part.Create(EffectModel, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CFuncs.Mesh.Create("SpecialMesh", prt, "FileMesh", "rbxassetid://437347603", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
}
}
function part(formfactor ,parent, reflectance, transparency, brickcolor, name, size)
local fp = IT("Part")
fp.formFactor = formfactor
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false
fp.Locked = true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = tors.Position
RemoveOutlines(fp)
fp.Material = "SmoothPlastic"
fp:BreakJoints()
return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = IT(Mesh)
mesh.Parent = part
if Mesh == "SpecialMesh" then
mesh.MeshType = meshtype
if meshid ~= "nil" then
mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
end
end
mesh.Offset = offset
mesh.Scale = scale
return mesh
end
 
function Magic(bonuspeed, type, pos, scale, value, color, MType)
local type = type
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = color
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Material = "Neon"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = pos
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshType = MType
rngm.Scale = scale
local scaler2 = 1
if type == "Add" then
scaler2 = 1 * value
elseif type == "Divide" then
scaler2 = 1 / value
end
coroutine.resume(coroutine.create(function()
for i = 0, 10 / bonuspeed, 0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01 * value / bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01 / value * bonuspeed
end
rng.Transparency = rng.Transparency + 0.01 * bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, scaler2 * bonuspeed)
end
rng:Destroy()
end))
end
 
function Eviscerate(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local ds = coroutine.wrap(function()
dude:WaitForChild("Head"):BreakJoints()
wait(0.5)
target = nil
coroutine.resume(coroutine.create(function()
for i, v in pairs(dude:GetChildren()) do
if v:IsA("Accessory") then
v:Destroy()
end
if v:IsA("Humanoid") then
v:Destroy()
end
if v:IsA("CharacterMesh") then
v:Destroy()
end
if v:IsA("Model") then
v:Destroy()
end
if v:IsA("Part") or v:IsA("MeshPart") then
for x, o in pairs(v:GetChildren()) do
if o:IsA("Decal") then
o:Destroy()
end
end
coroutine.resume(coroutine.create(function()
v.Material = "Neon"
v.CanCollide = false
local PartEmmit1 = IT("ParticleEmitter", v)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://284205403"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 150
PartEmmit1.Lifetime = NumberRange.new(1)
PartEmmit1.Size = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0.75, 0),
NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0, 0),
NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-500, 500)
PartEmmit1.RotSpeed = NumberRange.new(-500, 500)
local BodPoss = IT("BodyPosition", v)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = v.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
v.Color = maincolor.Color
coroutine.resume(coroutine.create(function()
for i = 0, 49 do
swait(1)
v.Transparency = v.Transparency + 0.08
end
wait(0.5)
PartEmmit1.Enabled = false
wait(3)
v:Destroy()
dude:Destroy()
end))
end))
end
end
end))
end)
ds()
end
end
 
function FindNearestHead(Position, Distance, SinglePlayer)
if SinglePlayer then
return Distance > (SinglePlayer.Torso.CFrame.p - Position).magnitude
end
local List = {}
for i, v in pairs(workspace:GetChildren()) do
if v:IsA("Model") and v:findFirstChild("Head") and v ~= char and Distance >= (v.Head.Position - Position).magnitude then
table.insert(List, v)
end
end
return List
end
 
function Aura(bonuspeed, FastSpeed, type, pos, x1, y1, z1, value, color, outerpos, MType)
local type = type
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.BrickColor = color
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Material = "Neon"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = pos
rng.CFrame = rng.CFrame + rng.CFrame.lookVector * outerpos
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshType = MType
rngm.Scale = Vector3.new(x1, y1, z1)
local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1 * value
elseif type == "Divide" then
scaler2 = 1 / value
end
coroutine.resume(coroutine.create(function()
for i = 0, 10 / bonuspeed, 0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01 * value / bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01 / value * bonuspeed
end
speeder = speeder - 0.01 * FastSpeed * bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector * speeder * bonuspeed
rng.Transparency = rng.Transparency + 0.01 * bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2 * bonuspeed, scaler2 * bonuspeed, 0)
end
rng:Destroy()
end))
end
 
function SoulSteal(dude)
if dude.Name ~= char then
local bgf = IT("BodyGyro", dude.Head)
bgf.CFrame = bgf.CFrame * CFrame.fromEulerAnglesXYZ(Rad(-90), 0, 0)
local val = IT("BoolValue", dude)
val.Name = "IsHit"
local torso = (dude:FindFirstChild'Head' or dude:FindFirstChild'Torso' or dude:FindFirstChild'UpperTorso' or dude:FindFirstChild'LowerTorso' or dude:FindFirstChild'HumanoidRootPart')
local soulst = coroutine.wrap(function()
local soul = Instance.new("Part",dude)
soul.Size = Vector3.new(1,1,1)
soul.CanCollide = false
soul.Anchored = false
soul.Position = torso.Position
soul.Transparency = 1
local PartEmmit1 = IT("ParticleEmitter", soul)
PartEmmit1.LightEmission = 1
PartEmmit1.Texture = "rbxassetid://569507414"
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
PartEmmit1.Rate = 250
PartEmmit1.Lifetime = NumberRange.new(1.6)
PartEmmit1.Size = NumberSequence.new({
NumberSequenceKeypoint.new(0, 1, 0),
NumberSequenceKeypoint.new(1, 0, 0)
})
PartEmmit1.Transparency = NumberSequence.new({
NumberSequenceKeypoint.new(0, 0, 0),
NumberSequenceKeypoint.new(1, 1, 0)
})
PartEmmit1.Speed = NumberRange.new(0, 0)
PartEmmit1.VelocitySpread = 30000
PartEmmit1.Rotation = NumberRange.new(-360, 360)
PartEmmit1.RotSpeed = NumberRange.new(-360, 360)
local BodPoss = IT("BodyPosition", soul)
BodPoss.P = 3000
BodPoss.D = 1000
BodPoss.maxForce = Vector3.new(50000000000, 50000000000, 50000000000)
BodPoss.position = torso.Position + Vector3.new(Mrandom(-15, 15), Mrandom(-15, 15), Mrandom(-15, 15))
wait(1.6)
soul.Touched:connect(function(hit)
if hit.Parent == char then
soul:Destroy()
end
end)
wait(1.2)
while soul do
swait()
PartEmmit1.Color = ColorSequence.new(maincolor.Color)
BodPoss.Position = tors.Position
end
end)
soulst()
end
end
 
 
 
 
--killer's effects
 
 
 
 
 
function CreatePart(Parent, Material, Reflectance, Transparency, BColor, Name, Size)
local Part = Create("Part"){
Parent = Parent,
Reflectance = Reflectance,
Transparency = Transparency,
CanCollide = false,
Locked = true,
BrickColor = BrickColor.new(tostring(BColor)),
Name = Name,
Size = Size,
Material = Material,
}
RemoveOutlines(Part)
return Part
end
 
function CreateMesh(Mesh, Part, MeshType, MeshId, OffSet, Scale)
local Msh = Create(Mesh){
Parent = Part,
Offset = OffSet,
Scale = Scale,
}
if Mesh == "SpecialMesh" then
Msh.MeshType = MeshType
Msh.MeshId = MeshId
end
return Msh
end
 
 
 
function BlockEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("BlockMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
if Type == 1 or Type == nil then
table.insert(Effects, {
prt,
"Block1",
delay,
x3,
y3,
z3,
msh
})
elseif Type == 2 then
table.insert(Effects, {
prt,
"Block2",
delay,
x3,
y3,
z3,
msh
})
end
end
 
function SphereEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
function RingEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt=CreatePart(workspace,"Neon",0,0,brickcolor,"Effect",vt(.5,.5,.5))--part(3,workspace,"SmoothPlastic",0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe
msh=CreateMesh("SpecialMesh",prt,"FileMesh","http://www.roblox.com/asset/?id=3270017",vt(0,0,0),vt(x1,y1,z1))
game:GetService("Debris"):AddItem(prt,2)
coroutine.resume(coroutine.create(function(Part,Mesh,num)
for i=0,1,delay do
swait()
Part.Transparency=i
Mesh.Scale=Mesh.Scale+vt(x3,y3,z3)
end
Part.Parent=nil
end),prt,msh,(math.random(0,1)+math.random())/5)
end
 
function CylinderEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "SmoothPlastic", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("CylinderMesh", prt, "", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
function WaveEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://20329976", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
function SpecialEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://24388358", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
 
function MoonEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh", prt, "FileMesh", "rbxassetid://259403370", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
function HeadEffect(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new())
prt.Anchored = true
prt.CFrame = cframe
local msh = CreateMesh("SpecialMesh", prt, "Head", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Cylinder",
delay,
x3,
y3,
z3,
msh
})
end
 
function BreakEffect(brickcolor, cframe, x1, y1, z1)
local prt = CreatePart(workspace, "Neon", 0, 0, brickcolor, "Effect", Vector3.new(0.5, 0.5, 0.5))
prt.Anchored = true
prt.CFrame = cframe * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
local msh = CreateMesh("SpecialMesh", prt, "Sphere", "", Vector3.new(0, 0, 0), Vector3.new(x1, y1, z1))
local num = math.random(10, 50) / 1000
game:GetService("Debris"):AddItem(prt, 10)
table.insert(Effects, {
prt,
"Shatter",
num,
prt.CFrame,
math.random() - math.random(),
0,
math.random(50, 100) / 100
})
end
 
 
 
 
 
so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
sou:play()
game:GetService("Debris"):AddItem(sou,8)
end))
end
 
 
--end of killer's effects
 
 
function FaceMouse()
local Cam = workspace.CurrentCamera
return {
CFrame.new(char.Torso.Position, Vector3.new(mouse.Hit.p.x, char.Torso.Position.y, mouse.Hit.p.z)),
Vector3.new(mouse.Hit.p.x, mouse.Hit.p.y, mouse.Hit.p.z)
}
end
-------------------------------------------------------
--End Effect Function--
-------------------------------------------------------
function Cso(ID, PARENT, VOLUME, PITCH)
local NSound = nil
coroutine.resume(coroutine.create(function()
NSound = IT("Sound", PARENT)
NSound.Volume = VOLUME
NSound.Pitch = PITCH
NSound.SoundId = "http://www.roblox.com/asset/?id="..ID
swait()
NSound:play()
game:GetService("Debris"):AddItem(NSound, 10)
end))
return NSound
end
function CameraEnshaking(Length, Intensity)
coroutine.resume(coroutine.create(function()
local intensity = 1 * Intensity
local rotM = 0.01 * Intensity
for i = 0, Length, 0.1 do
swait()
intensity = intensity - 0.05 * Intensity / Length
rotM = rotM - 5.0E-4 * Intensity / Length
hum.CameraOffset = Vector3.new(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)))
cam.CFrame = cam.CFrame * CF(Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity)), Rad(Mrandom(-intensity, intensity))) * Euler(Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM, Rad(Mrandom(-intensity, intensity)) * rotM)
end
hum.CameraOffset = Vector3.new(0, 0, 0)
end))
end
-------------------------------------------------------
--End Important Functions--
-------------------------------------------------------
 
 
-------------------------------------------------------
--Start Customization--
-------------------------------------------------------
local Player_Size = 1
if Player_Size ~= 1 then
root.Size = root.Size * Player_Size
tors.Size = tors.Size * Player_Size
hed.Size = hed.Size * Player_Size
ra.Size = ra.Size * Player_Size
la.Size = la.Size * Player_Size
rl.Size = rl.Size * Player_Size
ll.Size = ll.Size * Player_Size
----------------------------------------------------------------------------------
rootj.Parent = root
neck.Parent = tors
RW.Parent = tors
LW.Parent = tors
RH.Parent = tors
LH.Parent = tors
----------------------------------------------------------------------------------
rootj.C0 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
rootj.C1 = RootCF * CF(0 * Player_Size, 0 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0))
neck.C0 = necko * CF(0 * Player_Size, 0 * Player_Size, 0 + ((1 * Player_Size) - 1)) * angles(Rad(0), Rad(0), Rad(0))
neck.C1 = CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * angles(Rad(-90), Rad(0), Rad(180))
RW.C0 = CF(1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* RIGHTSHOULDERC0
LW.C0 = CF(-1.5 * Player_Size, 0.5 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(0), Rad(0)) --* LEFTSHOULDERC0
----------------------------------------------------------------------------------
RH.C0 = CF(1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C0 = CF(-1 * Player_Size, -1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
RH.C1 = CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
LH.C1 = CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * angles(Rad(0), Rad(-90), Rad(0)) * angles(Rad(0), Rad(0), Rad(0))
--hat.Parent = Character
end
----------------------------------------------------------------------------------
local SONG = 900817147 --900817147
local SONG2 = 0
local Music = Instance.new("Sound",tors)
Music.Volume = 0.7
Music.Looped = true
Music.Pitch = 1 --Pitcher
----------------------------------------------------------------------------------
local equipped = false
local idle = 0
local change = 1
local val = 0
local toim = 0
local idleanim = 0.4
local sine = 0
local Sit = 1
local attacktype = 1
local attackdebounce = false
local euler = CFrame.fromEulerAnglesXYZ
local cankick = false
----------------------------------------------------------------------------------
hum.WalkSpeed = 8
hum.JumpPower = 57
--[[
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
]]
local ANIMATOR = hum.Animator
local ANIMATE = char.Animate
ANIMATE.Parent = nil
ANIMATOR.Parent = nil
-------------------------------------------------------
--End Customization--
-------------------------------------------------------
 
 
-------------------------------------------------------
--Start Attacks N Stuff--
-------------------------------------------------------
 
--pls be proud mak i did my best
 
 
 
function attackone()
 
attack = true
 
for i = 0, 1.35, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4-2*i), math.rad(4+2*i), math.rad(-40-11*i)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(40+11*i)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.6, 0.2) * angles(math.rad(90+4*i), math.rad(-43), math.rad(16+6*i)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-43)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, 0) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, -0.2) * LHCF * angles(math.rad(-24), math.rad(0), math.rad(0)), 0.2)
end
 
so("http://roblox.com/asset/?id=1340545854",ra,1,math.random(0.7,1))
 
 
con5=ra.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
 
so("http://roblox.com/asset/?id=636494529",ra,2,1)
 
RingEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),ra.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
 
 
wait(0.34)
attackdebounce = false
 
end
end
end)
for i = 0, 1.12, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.9, -0) * angles(math.rad(14), math.rad(6), math.rad(23)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-4), math.rad(0), math.rad(-23)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.3, 0.6, -0.8) * angles(math.rad(110), math.rad(23), math.rad(2)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0.2) * angles(math.rad(-37), math.rad(0), math.rad(-13)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, -0.3) * RHCF * angles(math.rad(-4), math.rad(0), math.rad(6)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, 0.05) * LHCF * angles(math.rad(-22), math.rad(0), math.rad(23)), 0.3)
end
 
con5:Disconnect()
attack = false
 
end
 
 
 
 
 
 
 
 
 
 
 
 
function attacktwo()
 
attack = true
 
for i = 0, 1.35, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4), math.rad(-4), math.rad(40)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(46)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0.2) * angles(math.rad(90), math.rad(23), math.rad(6)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, -0.2) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-24), math.rad(0), math.rad(0)), 0.2)
end
 
so("http://roblox.com/asset/?id=1340545854",la,1,math.random(0.7,1))
 
 
con5=la.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
 
so("http://roblox.com/asset/?id=636494529",la,2,1)
 
RingEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),la.CFrame*CFrame.new(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
 
 
wait(0.34)
attackdebounce = false
 
end
end
end)
 
 
 
 
for i = 0, 1.12, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.9, -0) * angles(math.rad(14), math.rad(-6), math.rad(-27)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-4), math.rad(0), math.rad(27)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0.16) * angles(math.rad(-33), math.rad(0), math.rad(23)), 0.4)
LW.C0 = clerp(LW.C0, CFrame.new(-1.3, 0.67, -0.9) * angles(math.rad(116), math.rad(-28), math.rad(1)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -1, 0.05) * RHCF * angles(math.rad(-22), math.rad(0), math.rad(-18)), 0.3)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -1, -0.3) * LHCF * angles(math.rad(-2), math.rad(0), math.rad(4)), 0.3)
end
 
con5:Disconnect()
attack = false
 
end
 
 
 
 
 
function attackthree()
 
attack = true
 
 
for i = 0, 1.14, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-4), math.rad(-4), math.rad(40)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(-40)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(90), math.rad(0), math.rad(-46)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.6, 0.2) * angles(math.rad(90), math.rad(23), math.rad(36)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.7, -0.2) * RHCF * angles(math.rad(-34), math.rad(0), math.rad(-17)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-12), math.rad(0), math.rad(34)), 0.2)
end
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
 
so("http://roblox.com/asset/?id=636494529",ll,2,1)
 
RingEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),ll.CFrame*CF(0,-1,0)*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
 
 
wait(0.34)
attackdebounce = false
 
end
end
end)
 
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
for i = 0, 9.14, 0.3 do
swait()
BlockEffect(BrickColor.new("White"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(8), math.rad(8), math.rad(0-54*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
end
attack = false
con5:disconnect()
end
 
 
 
function attackfour()
 
attack = true
so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
WaveEffect(BrickColor.new("White"), root.CFrame * CFrame.new(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
for i = 0, 5.14, 0.1 do
swait()
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24+4*i), math.rad(0), math.rad(0)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0+11*i), math.rad(0), math.rad(0)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(0-6*i), math.rad(0), math.rad(36+4*i)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(0-6*i), math.rad(0), math.rad(-36-4*i)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28+4*i)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34-4*i)), 0.2)
end
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
local velo=Instance.new("BodyVelocity")
velo.velocity=vt(0,25,0)
velo.P=8000
velo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
velo.Parent=root
game:GetService("Debris"):AddItem(velo,0.7)
 
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.6,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.75*1.8,0.75*1.8),math.random(-0.75*1.8,0.75*1.8),math.random(-0.75*1.8,0.75*1.8)),0.44)
end
end))
 
 
wait(0.14)
attackdebounce = false
end
end
end)
 
for i = 0, 5.11, 0.15 do
swait()
BlockEffect(BrickColor.new("White"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, 0.1+0.2*i) * angles(math.rad(-10-80*i), math.rad(0), math.rad(0)), 0.42)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-43), math.rad(0), math.rad(0)), 0.42)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(60)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(-60)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20+10*i)), 0.42)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.5, -0.4) * LHCF * angles(math.rad(0), math.rad(0), math.rad(24)), 0.42)
end
 
 
attack = false
con5:disconnect()
end
 
 
 
 
 
local cooldown = false
function quickkick()
attack = true
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
 
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.3,-1.8)
end
end))
 
so("http://roblox.com/asset/?id=636494529",rl,2,1)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.8*1.8,0.8*1.8),math.random(-0.8*1.8,0.8*1.8),math.random(-0.8*1.8,0.8*1.8)),0.44)
end
end))
 
 
wait(0.08)
attackdebounce = false
end
end
end)
 
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
for i = 0, 11.14, 0.3 do
swait()
root.Velocity = root.CFrame.lookVector * 30
BlockEffect(BrickColor.new("White"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-30*i), math.rad(8+10*i), math.rad(0-90*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-2*i), math.rad(0), math.rad(0-9*i)), 0.35)
end
attack = false
con5:disconnect()
end
 
 
 
 
 
 
 
 
function Taunt()
attack = true
hum.WalkSpeed = 0
Cso("1535995570", hed, 8.45, 1)
for i = 0, 8.2, 0.1 do
swait()
hum.WalkSpeed = 0
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 12)) * angles(Rad(0), Rad(0), Rad(0)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(25), Rad(0), Rad(16 * Cos(sine / 12))), 0.2)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.1)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(-75), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(0)), 0.1)
RW.C0 = clerp(RW.C0, CF(1.1* Player_Size, 0.5 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(180), Rad(6), Rad(-56)), 0.1)
LW.C0 = clerp(LW.C0, CF(-1* Player_Size, 0.1 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(45), Rad(6), Rad(86)), 0.1)
end
attack = false
hum.WalkSpeed = 8
end
 
 
 
 
 
 
 
function Hyperkickcombo()
 
attack = true
so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
WaveEffect(BrickColor.new("White"), root.CFrame * CFrame.new(0, -1, 0) * euler(0, math.random(-50, 50), 0), 1, 1, 1, 1, 0.5, 1, 0.05)
for i = 0, 7.14, 0.1 do
swait()
SphereEffect(BrickColor.new("White"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(0), math.rad(0)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(36)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-20), math.rad(0), math.rad(-36)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34)), 0.2)
end
local Cracking = Cso("292536356", tors, 10, 1)
for i = 0, 7.14, 0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
Aura(5, 0.15, "Add" , root.CFrame * CF(Mrandom(-12, 12), -6, Mrandom(-12, 12)) * angles(Rad(90 + Mrandom(-12, 12)), 0, 0), 1.5, 1.5, 10, -0.015, BrickC"Lime green", 0, "Sphere")
WaveEffect(BrickColor.new("Lime green"), root.CFrame * CFrame.new(0, -6, 0) * euler(0, math.random(-25, 25), 0), 1, 1, 1, 1, 0.2, 1, 0.05)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
SphereEffect(BrickColor.new("Lime green"),ll.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.8) * angles(math.rad(24), math.rad(0), math.rad(0)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(30), math.rad(0), math.rad(0)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(36)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(20), math.rad(0), math.rad(-36)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.6, -0.3) * RHCF * angles(math.rad(0), math.rad(0), math.rad(-28)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.2, -0.5) * LHCF * angles(math.rad(0), math.rad(0), math.rad(-34)), 0.2)
end
Cracking.Playing = false
so("http://www.roblox.com/asset/?id=197161452", char, 3, 0.8)
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
SphereEffect(BrickColor.new("Lime green"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,38,38,38,0.08)
local velo=Instance.new("BodyVelocity")
velo.velocity=vt(0,27,0)
velo.P=11000
velo.maxForce=Vector3.new(math.huge, math.huge, math.huge)
velo.Parent=root
game:GetService("Debris"):AddItem(velo,1.24)
 
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,3.4,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.09)
attackdebounce = false
end
end
end)
 
for i = 0, 9.11, 0.2 do
swait()
BlockEffect(BrickColor.new("Lime green"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, 0.1+0.12*i) * angles(math.rad(-10-95*i), math.rad(0), math.rad(0)), 0.42)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(-43), math.rad(0), math.rad(0)), 0.42)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(60)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.5, 0) * angles(math.rad(-8), math.rad(0), math.rad(-60)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.5, 0) * RHCF * angles(math.rad(0), math.rad(0), math.rad(20+10*i)), 0.42)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.5, -0.4) * LHCF * angles(math.rad(0), math.rad(0), math.rad(24)), 0.42)
end
 
 
 
 
con5:disconnect()
 
 
 
 
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.08)
attackdebounce = false
end
end
end)
 
 
 
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
for i = 0, 9.14, 0.3 do
swait()
root.Velocity = root.CFrame.lookVector * 20
BlockEffect(BrickColor.new("Lime green"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(53), math.rad(8), math.rad(0-54*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
end
 
 
 
con5:disconnect()
 
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.05)
attackdebounce = false
end
end
end)
 
 
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
for i = 0, 15.14, 0.32 do
swait()
root.Velocity = root.CFrame.lookVector * 20
BlockEffect(BrickColor.new("Lime green"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-50*i), math.rad(8+20*i), math.rad(0-90*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-2*i), math.rad(0), math.rad(0-4*i)), 0.35)
end
 
attack = false
con5:disconnect()
 
end
 
 
 
 
 
local ultra = false
 
function Galekicks()
 
attack = true
so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 3, 1)
for i = 0, 1.65, 0.1 do
swait()
root.Velocity = root.CFrame.lookVector * 0
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
 
 
for i = 1, 17 do
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Lime green"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.05)
attackdebounce = false
end
end
end)
 
for i = 0, .1, 0.2 do
swait()
BlockEffect(BrickColor.new("Lime green"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
root.Velocity = root.CFrame.lookVector * 10
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-44), math.rad(-2), math.rad(90)), 0.7)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-24), math.rad(-90)), 0.7)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.7)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.7)
RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0) * RHCF * angles(math.rad(math.random(-100,-10)), math.rad(0), math.rad(2)), 0.7)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-34), math.rad(0), math.rad(0)), 0.7)
end
 
so("http://roblox.com/asset/?id=1340545854",rl,1,math.random(0.7,1))
 
for i = 0, 0.4, 0.2 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
con5:disconnect()
end
 
 
u = mouse.KeyDown:connect(function(key)
if key == 'r' and combohits >= 150 then
ultra = true
SphereEffect(BrickColor.new("Really red"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,15,15,15,0.04)
end
end)
wait(0.3)
if ultra == true then
combohits = 0
wait(0.1)
for i = 0, 1.65, 0.1 do
swait()
root.Velocity = root.CFrame.lookVector * 0
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
 
 
so("http://roblox.com/asset/?id=146094803",hed,1,1.2)
 
for i = 1, 65 do
--Aura(5, 0.15, "Add" , root.CFrame * CF(Mrandom(-12, 12), -6, Mrandom(-12, 12)) * angles(Rad(90 + Mrandom(-12, 12)), 0, 0), 1.5, 1.5, 10, -0.015, BrickC"Really red", 0, "Brick")
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,1.6)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.05)
attackdebounce = false
end
end
end)
 
for i = 0, .03, 0.1 do
swait()
BlockEffect(BrickColor.new("Really red"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
root.Velocity = root.CFrame.lookVector * 10
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-44), math.rad(-2), math.rad(90)), 0.7)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-24), math.rad(-90)), 0.7)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.7)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.7)
RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0) * RHCF * angles(math.rad(math.random(-100,-10)), math.rad(0), math.rad(2)), 0.7)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-34), math.rad(0), math.rad(0)), 0.7)
end
 
so("http://roblox.com/asset/?id=1340545854",rl,1,math.random(0.7,1))
 
for i = 0, 0.07, 0.1 do
swait()
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
con5:disconnect()
end
 
for i = 0, 1.65, 0.1 do
swait()
root.Velocity = root.CFrame.lookVector * 0
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-50,50),math.random(-50,50),math.random(-50,50)),1,5,1,.05,4,.05,0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0.7, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, .62 , -0.3) * RHCF * angles(math.rad(-40), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
coroutine.resume(coroutine.create(function()
for i = 0,1.5,0.1 do
swait()
--hit.Parent.Head.CFrame = root.CFrame * CFrame.new(0,1.1,-1.8)
end
end))
so("http://roblox.com/asset/?id=636494529",rl,2,.63)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
RingEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,.2,2,.2,0.06)
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,3,3,3,0.06)
 
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8),math.random(-0.55*1.8,0.55*1.8)),0.34)
end
end))
 
 
wait(0.05)
attackdebounce = false
end
end
end)
 
so("http://www.roblox.com/asset/?id=1452040709", RightLeg, 1, 1.4)
SphereEffect(BrickColor.new("Really red"),rl.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,38,38,38,0.08)
 
for i = 0, 2, 0.1 do
swait()
--BlockEffect(BrickColor.new("Really red"), rl.CFrame*CF(0,-1,0), 2, 2, 2, 1.5, 1.5, 1.5, 0.03)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, -0.5, -0.3) * angles(math.rad(-32), math.rad(-2), math.rad(90)), 0.2)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(0), math.rad(-17), math.rad(-90)), 0.2)
RW.C0 = clerp(RW.C0, CFrame.new(1.1, 0.5, -0.6) * angles(math.rad(90), math.rad(0), math.rad(-56)), 0.3)
LW.C0 = clerp(LW.C0, CFrame.new(-1.2, 0.6, -0.5) * angles(math.rad(90), math.rad(0), math.rad(56)), 0.3)
RH.C0 = clerp(RH.C0, CFrame.new(1, -.6 , 0.2) * RHCF * angles(math.rad(-50), math.rad(0), math.rad(2)), 0.2)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.7, 0) * LHCF * angles(math.rad(-28), math.rad(0), math.rad(0)), 0.2)
end
SphereEffect(BrickColor.new("Really red"),tors.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
 
wait(0.25)
con5:Disconnect()
 
 
 
 
con5=hum.Touched:connect(function(hit)
if hit.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if attackdebounce == false then
attackdebounce = true
 
so("http://roblox.com/asset/?id=565207203",ll,7,0.63)
 
RingEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,2.2,6,2.2,0.04)
RingEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,2.2,6,2.2,0.04)
SphereEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
SpecialEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,8,8,8,0.04)
SphereEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,5,18,5,0.04)
WaveEffect(BrickColor.new("Really red"),ll.CFrame*angles(math.random(-360,360),math.random(-360,360),math.random(-360,360)),1,5,1,1.5,16,1.5,0.04)
 
coroutine.resume(coroutine.create(function()
for i = 0,1,0.1 do
swait()
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8),math.random(-0.35*1.8,0.35*1.8)),0.24)
end
end))
 
wait(0.06)
attackdebounce = false
 
end
end
end)
 
coroutine.resume(coroutine.create(function()
while ultra == true do
swait()
root.CFrame = root.CFrame*CFrame.new(math.random(-3,3),math.random(-2,2),math.random(-3,3))
end
end))
 
 
so("http://www.roblox.com/asset/?id=158475221", RightLeg, 1, 1.3)
for i = 1,3 do
for i = 0, 9.14, 0.45 do
swait()
root.Velocity = root.CFrame.lookVector * 30
BlockEffect(BrickColor.new("Really red"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(8), math.rad(8), math.rad(0-94*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(7), math.rad(0), math.rad(4)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-64-7*i), math.rad(0), math.rad(0-9*i)), 0.35)
end
end
 
 
for i = 1,3 do
for i = 0, 11.14, 0.45 do
swait()
root.Velocity = root.CFrame.lookVector * 30
BlockEffect(BrickColor.new("Really red"), ll.CFrame*CF(0,-1,0), 2, 2, 2, 3.5, 3.5, 3.5, 0.05)
rootj.C0 = clerp(rootj.C0, RootCF * CFrame.new(0, 0, -0.87) * angles(math.rad(-21-30*i), math.rad(8+10*i), math.rad(0-110*i)), 0.35)
tors.Neck.C0 = clerp(tors.Neck.C0, necko * angles(math.rad(12), math.rad(0), math.rad(24)), 0.35)
RW.C0 = clerp(RW.C0, CFrame.new(1.5, 0.5, 0) * angles(math.rad(12), math.rad(0), math.rad(62)), 0.35)
LW.C0 = clerp(LW.C0, CFrame.new(-1.5, 0.3, 0) * angles(math.rad(12), math.rad(0), math.rad(-23)), 0.35)
RH.C0 = clerp(RH.C0, CFrame.new(1, -0.17, -0.4) * RHCF * angles(math.rad(27), math.rad(0), math.rad(74)), 0.35)
LH.C0 = clerp(LH.C0, CFrame.new(-1, -0.13, -0.6) * LHCF * angles(math.rad(-34-2*i), math.rad(0), math.rad(0-9*i)), 0.35)
end
 
 
 
end
so("http://www.roblox.com/asset/?id=197161452", char, 0.5, 0.8)
con5:disconnect()
 
 
end -- combo hit end
attack = false
ultra = false
u:disconnect()
 
end
 
 
 
 
-------------------------------------------------------
--End Attacks N Stuff--
-------------------------------------------------------
mouse.KeyDown:connect(function(key)
if string.byte(key) == 48 then
Swing = 2
hum.WalkSpeed = 24.82
end
end)
mouse.KeyUp:connect(function(key)
if string.byte(key) == 48 then
Swing = 1
hum.WalkSpeed = 8
end
end)
 
 
 
 
 
 
 
mouse.Button1Down:connect(function()
if attack==false then
if attacktype==1 then
attack=true
attacktype=2
attackone()
elseif attacktype==2 then
attack=true
attacktype=3
attacktwo()
elseif attacktype==3 then
attack=true
attacktype=4
attackthree()
elseif attacktype==4 then
attack=true
attacktype=1
attackfour()
end
end
end)
 
 
 
 
mouse.KeyDown:connect(function(key)
if key == 'e' and attack == false and cankick == true and cooldown == false then
quickkick()
cooldown = true
 
coroutine.resume(coroutine.create(function()
wait(2)
cooldown = false
end))
 
 
 
end
end)
 
 
 
 
 
 
 
 
mouse.KeyDown:connect(function(key)
if attack == false then
if key == 't' then
Taunt()
elseif key == 'f' then
Hyperkickcombo()
elseif key == 'r' then
Galekicks()
end
end
end)
 
-------------------------------------------------------
--Start Animations--
-------------------------------------------------------
print("By Makhail07 and KillerDarkness0105")
print("Basic Animations by Makhail07")
print("Attack Animations by KillerDarkness0105")
print("This is pretty much our final script together")
print("--------------------------------")
print("Attacks")
print("E in air: Quick Kicks")
print("Left Mouse: 4 click combo")
print("F: Hyper Kicks")
print("R: Gale Kicks, Spam R if your combo is over 150 to do an ultra combo")
print("--------------------------------")
while true do
swait()
sine = sine + change
local torvel = (root.Velocity * Vector3.new(1, 0, 1)).magnitude
local velderp = root.Velocity.y
hitfloor, posfloor = rayCast(root.Position, CFrame.new(root.Position, root.Position - Vector3.new(0, 1, 0)).lookVector, 4* Player_Size, char)
 
if hitfloor == nil then
cankick = true
else
cankick = false
end
 
 
if equipped == true or equipped == false then
if attack == false then
idle = idle + 1
else
idle = 0
end
if 1 < root.Velocity.y and hitfloor == nil then
Anim = "Jump"
if attack == false then
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(-16), Rad(0), Rad(0)), 0.15)
neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.1)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -.2 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.9 - 0.1 * Cos(sine / 20), -.5* Player_Size) * LHCF * angles(Rad(-2.5), Rad(0), Rad(0)), 0.15)
RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(13 + 4.5 * Sin(sine / 20))), 0.1)
LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(25), Rad(-.6), Rad(-13 - 4.5 * Sin(sine / 20))), 0.1)
end
elseif -1 > root.Velocity.y and hitfloor == nil then
Anim = "Fall"
if attack == false then
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1 * Cos(sine / 20)* Player_Size) * angles(Rad(24), Rad(0), Rad(0)), 0.15)
neck.C0 = clerp(neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(10 - 2.5 * Sin(sine / 30)), Rad(0), Rad(0)), 0.1)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -1 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * RHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -.8 - 0.1 * Cos(sine / 20)* Player_Size, -.3* Player_Size) * LHCF * angles(Rad(-3.5), Rad(0), Rad(0)), 0.15)
RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(65), Rad(-.6), Rad(45 + 4.5 * Sin(sine / 20))), 0.1)
LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.02 * Sin(sine / 20)* Player_Size, 0* Player_Size) * angles(Rad(55), Rad(-.6), Rad(-45 - 4.5 * Sin(sine / 20))), 0.1)
end
elseif torvel < 1 and hitfloor ~= nil then
Anim = "Idle"
change = 1
if attack == false then
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.1 + 0.1* Player_Size * Cos(sine / 12)) * angles(Rad(0), Rad(0), Rad(20)), 0.1)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-6.5 * Sin(sine / 12)), Rad(0), Rad(-20)), 0.1)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(0), Rad(75), Rad(0)) * angles(Rad(-12.5), Rad(0), Rad(0)), 0.1)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.9 - 0.1 * Cos(sine / 12)* Player_Size, -0.2* Player_Size) * angles(Rad(0), Rad(-65), Rad(0)) * angles(Rad(-6.5), Rad(0), Rad(6)), 0.1)
RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.2 + 0.05 * Sin(sine / 12)* Player_Size, 0* Player_Size) * angles(Rad(110), Rad(6 + 6.5 * Sin(sine / 12)), Rad(25)), 0.1)
LW.C0 = clerp(LW.C0, CF(-1.3* Player_Size, 0.2 + 0.05 * Sin(sine / 12)* Player_Size, -0.5* Player_Size) * angles(Rad(110), Rad(6 - 6.5 * Sin(sine / 12)), Rad(25)), 0.1)
end
elseif torvel > 2 and torvel < 22 and hitfloor ~= nil then
Anim = "Walk"
change = 1
if attack == false then
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(3 - 2.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(8 * Cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-1), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.15)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.8 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 - 15 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.8 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.6 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 15 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 10 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 2 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(56) * Cos(sine / 7) , Rad(10 * Cos(sine / 7)), Rad(6) - ra.RotVelocity.Y / 75), 0.1)
LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 7)* Player_Size, 0* Player_Size) * angles(Rad(-56) * Cos(sine / 7) , Rad(10 * Cos(sine / 7)) , Rad(-6) + la.RotVelocity.Y / 75), 0.1)
end
elseif torvel >= 22 and hitfloor ~= nil then
Anim = "Sprint"
change = 1.35
if attack == false then
hum.CameraOffset = hum.CameraOffset:lerp(Vector3.new(0,0,0),0.15)
rootj.C0 = clerp(rootj.C0, RootCF * CF(0* Player_Size, 0* Player_Size, -0.175 + 0.025 * Cos(sine / 3.5) + -Sin(sine / 3.5) / 7* Player_Size) * angles(Rad(26 - 4.5 * Cos(sine / 3.5)), Rad(0) - root.RotVelocity.Y / 75, Rad(15 * Cos(sine / 7))), 0.15)
tors.Neck.C0 = clerp(tors.Neck.C0, necko* CF(0, 0, 0 + ((1* Player_Size) - 1)) * angles(Rad(-8.5 - 2 * Sin(sine / 20)), Rad(0), Rad(0) - hed.RotVelocity.Y / 15), 0.15)
RH.C0 = clerp(RH.C0, CF(1* Player_Size, -0.925 - 0.5 * Cos(sine / 7) / 2* Player_Size, 0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 - 55 * Cos(sine / 7)) - rl.RotVelocity.Y / 75 + -Sin(sine / 7) / 2.5, Rad(90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 + 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
LH.C0 = clerp(LH.C0, CF(-1* Player_Size, -0.925 + 0.5 * Cos(sine / 7) / 2* Player_Size, -0.7 * Cos(sine / 7) / 2* Player_Size) * angles(Rad(-15 + 55 * Cos(sine / 7)) + ll.RotVelocity.Y / 75 + Sin(sine / 7) / 2.5, Rad(-90 - 0.1 * Cos(sine / 7)), Rad(0)) * angles(Rad(0 - 0.1 * Cos(sine / 7)), Rad(0), Rad(0)), 0.3)
RW.C0 = clerp(RW.C0, CF(1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, 0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-65) , Rad(0), Rad(13) - ra.RotVelocity.Y / 75), 0.15)
LW.C0 = clerp(LW.C0, CF(-1.5* Player_Size, 0.5 + 0.05 * Sin(sine / 30)* Player_Size, -0.34 * Cos(sine / 7* Player_Size)) * angles(Rad(-65) , Rad(0) , Rad(-13) + la.RotVelocity.Y / 75), 0.15)
end
end
end
Music.SoundId = "rbxassetid://"..SONG
Music.Looped = true
Music.Pitch = 1
Music.Volume = 0.7
Music.Parent = tors
Music:Resume()
if 0 < #Effects then
for e = 1, #Effects do
if Effects[e] ~= nil then
local Thing = Effects[e]
if Thing ~= nil then
local Part = Thing[1]
local Mode = Thing[2]
local Delay = Thing[3]
local IncX = Thing[4]
local IncY = Thing[5]
local IncZ = Thing[6]
if 1 >= Thing[1].Transparency then
if Thing[2] == "Block1" then
Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
local Mesh = Thing[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Block2" then
Thing[1].CFrame = Thing[1].CFrame + Vector3.new(0, 0, 0)
local Mesh = Thing[7]
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Block3" then
Thing[1].CFrame = Thing[1].CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50)) + Vector3.new(0, 0.15, 0)
local Mesh = Thing[7]
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Cylinder" then
local Mesh = Thing[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Blood" then
local Mesh = Thing[7]
Thing[1].CFrame = Thing[1].CFrame * Vector3.new(0, 0.5, 0)
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[4], Thing[5], Thing[6])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Elec" then
local Mesh = Thing[1].Mesh
Mesh.Scale = Mesh.Scale + Vector3.new(Thing[7], Thing[8], Thing[9])
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Disappear" then
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
elseif Thing[2] == "Shatter" then
Thing[1].Transparency = Thing[1].Transparency + Thing[3]
Thing[4] = Thing[4] * CFrame.new(0, Thing[7], 0)
Thing[1].CFrame = Thing[4] * CFrame.fromEulerAnglesXYZ(Thing[6], 0, 0)
Thing[6] = Thing[6] + Thing[5]
end
else
Part.Parent = nil
table.remove(Effects, e)
end
end
end
end
end
end
-------------------------------------------------------
--End Animations And Script--
 -------------------------------------------------------