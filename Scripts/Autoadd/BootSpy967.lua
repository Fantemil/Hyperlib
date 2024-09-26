
getgenv = getgenv or function() return getfenv(2) end
local Logger = {} -- Type = {LastCall=os.time(), CallsPerSec=number}
local Limits = { -- How many times an instance can fire per second
 BindableEvent = 3,
 BindableFunction = 3,
 RemoteFunction = 3,
 RemoteEvent = 3
}
local vers = '0.0.1b'
function keyF(a)
 return typeof(a) == 'number' and ('[%d] = '):format(a) or ('[\'%s\'] = '):format(tostring(a))
end
function keyE(a, b)
 if typeof(b):lower() == 'instance' then
  return b.Name:gsub(' ', '_')
 elseif typeof(b) == 'boolean' then return 'bool' .. tostring(a) elseif typeof(b) == 'string' then return 'str' .. tostring(a) elseif typeof(b) == 'number' then return 'num' .. tostring(a) elseif typeof(b) == 'table' then return 'tbl' .. tostring(a) else return typeof(b) .. tostring(a) end
end
local BootlegDebug = {}
local Output = print -- Change to setclipboard if you want remotes to be copied to your clipboard
function BootlegDebug.getinfo(thread)
 local CurrentLine = tonumber(debug.info(thread, 'l'))
 local Source = debug.info(thread, 's')
 local name = debug.info(thread, 'n')
 local numparams, isvrg = debug.info(thread, 'a')
 if #name == 0 then name = nil end
 local a, b = debug.info(thread, 'a')
 return {
  ['currentline'] = CurrentLine,
  ['Source'] = Source,
  ['name'] = tostring(name),
  ['numparams'] = tonumber(numparams),
  ['is_vararg'] = isvrg and 1 or 0,
  ['short_src'] = tostring(Source:sub(1, 60))
  }
end
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
function tableloop(tbl, indent, equal, meta)
    meta = meta or 0
    indent = indent or 0
    local result = (not equal and string.rep('  ', indent) or '') .. '{'
    equal = false
    if typeof(tbl) ~= 'table' then return Handle(tbl, indent) end
    local _AM = 0
    for key, value in pairs(tbl) do
        _AM = _AM + 1
        if typeof(value) == 'table' then
            if getmetatable(value) then
                result = result .. string.rep('  ', indent) .. 'local meta' .. (meta ~= 0 and tostring(meta) or '') .. ' = ' .. tableloop(getmetatable(value), indent, true, meta+1)
                meta = meta + 1
            else
                result = result .. '\n' .. (not equal and string.rep('  ', indent + 1) or '') .. keyF(key) .. tableloop(value, indent + 1, true, meta)
            end
        else
            result = result .. '\n' .. (not equal and string.rep('  ', indent + 1) or '') .. keyF(key) .. Handle(value, indent + 1, keyE(key, value)) .. ';'
        end
    end
    return _AM > 0 and (result .. '\n' .. string.rep('  ', indent) .. '}') or '{}'
end

function Handle(data, indent, identifier)
    local dataType = typeof(data)
    local constructors = {
        ['string'] = function(data) return "'" .. data .. "'" end,
        ['table'] = function(data) return tableloop(data, indent and indent + 1 or 1, identifier and true or false) end,
        ['function'] = function(data) return string.format('function(%s) --[[ i forgor the source? ]] end', BootlegDebug.getinfo(data).numparams) end,
        ['number'] = function(data) return tostring(data) end,
        ['Vector3'] = function(data) return string.format("Vector3.new(%f, %f, %f)", data.X, data.Y, data.Z) end,
        ['Vector2'] = function(data) return string.format("Vector2.new(%f, %f)", data.X, data.Y) end,
        ['UDim'] = function(data) return string.format("UDim.new(%f, %f)", data.Scale, data.Offset) end,
        ['UDim2'] = function(data) return string.format("UDim2.new(%f, %f, %f, %f)", data.X.Scale, data.X.Offset, data.Y.Scale, data.Y.Offset) end,
        ['CFrame'] = function(data) local components = {data:GetComponents()} return string.format("CFrame.new(%s)", table.concat(components, ", ")) end,
        ['Color3'] = function(data) return string.format("Color3.fromRGB(%d, %d, %d)", math.floor(data.R * 255), math.floor(data.G * 255), math.floor(data.B * 255)) end,
        ['BrickColor'] = function(data) return string.format("BrickColor.new('%s')", tostring(data)) end,
        ['Enum'] = function(data) return string.format("%s", tostring(data)) end,
        ['EnumItem'] = function(data) return string.format("%s", tostring(data)) end,
        ['Instance'] = function(data) return ('%s'):format(GetFullName(data)) end,
        ['buffer'] = function(data) return string.rep('  ', indent) .. ('buffer.create(%d)'):format(buffer.len(data)) end,
        ['boolean'] = function(data) return tostring(data) end
    }
    if constructors[dataType] then
        return constructors[dataType](data)
    else
        return tostring(typeof(data)) .. '.new(' .. tostring(data) .. ')'
    end
end
function GetEvents()
 local Events = {}
 for i, v in ipairs(game:GetDescendants()) do
  if v:IsA("RemoteEvent") or v:IsA("UnreliableRemoteEvent") then
   if v:IsDescendantOf(game:GetService('Players')) and v:IsDescendantOf(game:GetService("Players").LocalPlayer) then
    table.insert(Events, v)
   elseif not v:IsDescendantOf(game:GetService('Players')) then
    table.insert(Events, v)
   end
  end
 end
 return Events
end
function GetBEvents()
 local Events = {}
 for i, v in ipairs(game:GetDescendants()) do
  if v:IsA("BindableEvent") then
   if v:IsDescendantOf(game:GetService('Players')) and v:IsDescendantOf(game:GetService("Players").LocalPlayer) then
    table.insert(Events, v)
   elseif not v:IsDescendantOf(game:GetService('Players')) then
    table.insert(Events, v)
   end
  end
 end
 return Events
end
function GetFunctions()
 local Funcs = {}
 for i, v in ipairs(game:GetDescendants()) do
  if v:IsA("RemoteFunction") then
   if v:IsDescendantOf(game:GetService('Players')) and v:IsDescendantOf(game:GetService("Players").LocalPlayer) then
    table.insert(Funcs, v)
   elseif not v:IsDescendantOf(game:GetService('Players')) then
    table.insert(Funcs, v)
   end
  end
 end
 return Funcs
end
function GetBFunctions()
 local Funcs = {}
 for i, v in ipairs(game:GetDescendants()) do
  if v:IsA("BindableFunction") then
   if v:IsDescendantOf(game:GetService('Players')) and v:IsDescendantOf(game:GetService("Players").LocalPlayer) then
    table.insert(Funcs, v)
   elseif not v:IsDescendantOf(game:GetService('Players')) then
    table.insert(Funcs, v)
   end
  end
 end
 return Funcs
end
function EventMain(Event)
 Logger[Event] = 0
 Event.OnClientEvent:Connect(function(...)
  if Logger[Event] > Limits[Event.ClassName] then
    return
  end
  Logger[Event] = Logger[Event] + 1
  local StrArgs = tableloop({...})
  local FullData = string.format('--[[ Script generated by BootSpy v%s\nRemote Type: %s\n]]\nlocal args = %s\n\n--[[ THE FOLLOWING LINE CANNOT BE EXECUTED BY YOUR EXECUTOR, AS ITS JUST DEMONSTRATING WHAT THE SERVER DID. ]]\n\n%s:FireClient(game:GetService("Players").%s, unpack(args));', vers, Event.ClassName, StrArgs, GetFullName(Event), game:GetService("Players").LocalPlayer.Name)
  Output(FullData)
  task.delay(1, function()
   Logger[Event] = Logger[Event] - 1
  end)
 end)
end
function BEventMain(Event)
 Logger[Event] = 0
 Event.Event:Connect(function(...)
  if Logger[Event] > Limits[Event.ClassName] then
    return
  end
  Logger[Event] = Logger[Event] + 1
  local StrArgs = tableloop({...})
  local FullData = string.format('--[[ Script generated by BootSpy v%s\nRemote Type: %s\n]]\nlocal args = %s\n\n--[[ THE FOLLOWING LINE **CAN** BE EXECUTED BY YOUR EXECUTOR AS THE FOLLOWING REMOTE IS A BINDABLE EVENT. ]]\n\n%s:Fire(unpack(args));', vers, Event.ClassName, StrArgs, GetFullName(Event), game:GetService("Players").LocalPlayer.Name)
  task.delay(1, function()
   Logger[Event] = Logger[Event] - 1
  end)
  Output(FullData)
 end)
end
function FunctionMain(Func)
 -- We cannot obtain the old function of the RemoteFunction so we have to override it, Breaking SOME scripts and potentially getting you kicked
 Logger[Func] = 0
 Func.OnClientInvoke = function(...)
  if Logger[Func] > Limits[Func.ClassName] then
    return
  end
  Logger[Func] = Logger[Func] + 1
  local StrArgs = tableloop({...})
  local FullData = string.format('--[[ Script generated by BootSpy v%s\nRemote Type: %s\n]]\nlocal args = %s\n\n--[[ THE FOLLOWING LINE CANNOT BE EXECUTED BY YOUR EXECUTOR, AS ITS JUST DEMONSTRATING WHAT THE SERVER DID. ]]\n\n%s:InvokeClient(game:GetService("Players").%s, unpack(args));', vers, Func.ClassName, StrArgs, GetFullName(Func), game:GetService("Players").LocalPlayer.Name)
  Output(FullData)
  task.delay(1, function()
   Logger[Func] = Logger[Func] - 1
  end)
  return '1'
 end
end
function BFunctionMain(Func)
 -- We cannot obtain the old function of the BindableFunction so we have to override it, Breaking SOME scripts and potentially getting you kicked
 Logger[Func] = 0
 Func.OnInvoke = function(...)
  if Logger[Func] > Limits[Func.ClassName] then
    return
  end
  Logger[Func] = Logger[Func] + 1
  local StrArgs = tableloop({...})
  local FullData = string.format('--[[ Script generated by BootSpy v%s\nRemote Type: %s\n]]\nlocal args = %s\n\n--[[ THE FOLLOWING LINE **CAN** BE EXECUTED BY YOUR EXECUTOR, BUT A RETURN VALUE AND MAIN FUNCTIONALITY IS MISSING FOR THIS FUNCTIONS SO IT MIGHT NOT DO WHAT YOU EXPECT. ]]\n\n%s:Invoke(unpack(args));', vers, Func.ClassName, StrArgs, GetFullName(Func))
  Output(FullData)
  task.delay(1, function()
   Logger[Func] = Logger[Func] - 1
  end)
  return '1'
 end
end
local a, b, c, d = GetEvents(), GetFunctions(), GetBEvents(), GetBFunctions()
for _, v in pairs(a) do
 EventMain(v)
end
for _, v in pairs(b) do
 FunctionMain(v)
end
for _, v in pairs(c) do
 BEventMain(v)
end
for _, v in pairs(d) do
 BFunctionMain(v)
end

print('Successfully implemented BootSpy.')