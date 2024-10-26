if not debug.getupvalues or not debug.getprotos or not debug.getconstants then
 return nil
end
local Numbers = {}
local Properties = {}
local HttpService = game:GetService('HttpService');
function keyF(a)
 return typeof(a) == 'number' and ('[%d] = '):format(a) or ('[\'%s\'] = '):format(tostring(a))
end
function keyE(a, b)
 if typeof(b):lower() == 'instance' then
  return b.Name:gsub(' ', '_')
 elseif typeof(b) == 'boolean' then return 'bool' .. tostring(a) elseif typeof(b) == 'string' then return 'str' .. tostring(a) elseif typeof(b) == 'number' then return 'num' .. tostring(a) elseif typeof(b) == 'table' then return 'tbl' .. tostring(a) else return typeof(b) .. tostring(a) end
end
function rnum(min, max)
 local a;
 repeat a = math.random(min, max) until not table.find(Numbers, a)
 table.insert(Numbers, a)
 return a
end
local _RENV = getrenv()
function inrenv(func)
 name = typeof(func) == 'string' and func or typeof(func) == 'function' and debug.getinfo(func).name
 for i, v in _RENV do
  if typeof(v) == 'function' then
   if i == name then return true end
  end
 end
 return false
end
function buffermain(buff, indent, identifier)
 identifier = tostring(identifier)
 local str = 'buffer.create(' .. tostring(buffer.len(buff)) .. ');'
 for i = 1, buffer.len(buff) - 1 do
  local a = buffer.readi8(buff, i)
  if a ~= 0 then -- null (empty cell)
   local e = ''
   pcall(function()
    e = string.char(a)
   end)
   str = str .. ('\n%sbuffer.writei8(%s, %d, %d) --[[ Can possibly be \'%s\' ]]'):format(string.rep('  ', indent), identifier, i, a, a ~= 10 and e or '\\n')
  end
 end
 return str
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
    if typeof(tbl) ~= 'table' then return HandleDatatype(tbl, indent) end
    local _AM = 0
    for key, value in pairs(tbl) do
        _AM += 1
        if typeof(value) == 'table' then
            if getmetatable(value) then
                result = result .. string.rep('  ', indent) .. 'local meta' .. (meta ~= 0 and tostring(meta) or '') .. ' = ' .. tableloop(getmetatable(value), indent, true, meta+1)
                meta+=1
            else
                result = result .. '\n' .. (not equal and string.rep('  ', indent + 1) or '') .. keyF(key) .. tableloop(value, indent + 1, true, meta)
            end
        else
            result = result .. '\n' .. (not equal and string.rep('  ', indent + 1) or '') .. keyF(key) .. HandleDatatype(value, indent + 1, keyE(key, value)) .. ';'
        end
    end
    return _AM > 0 and (result .. '\n' .. string.rep('  ', indent) .. '}') or '{}'
end

function HandleDatatype(data, indent, identifier)
    local dataType = typeof(data)
    local constructors = {
        ['string'] = function(data) return "'" .. data .. "'" end,
        ['table'] = function(data) return tableloop(data, indent and indent + 1 or 1, identifier and true or false) end,
        ['function'] = function(data) return DecompileFunction(data, indent, false, true) end,
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
        ['buffer'] = function(data) return buffermain(data, indent, identifier) end,
        ['boolean'] = function(data) return tostring(data) end
    }
    if constructors[dataType] then
        return constructors[dataType](data)
    else
        return tostring(typeof(data)) .. '.new(' .. tostring(data) .. ')'
    end
end
function gcsenv(Scr)
    local funcs = {}
    for i, v in next, getgc(true) do
        if (typeof(v) == "function" and islclosure(v) and getfenv(v).script == Scr and not table.find(funcs, v)) then
            table.insert(funcs, v)
            task.wait()
        end
    end
    return funcs
end
function DecompileFunction(TargetFunc, indent, IsProto, ExcludeName, equal)
 indent = indent or 0
 equal = not equal and ExcludeName or equal
 local paramcount = debug.getinfo(TargetFunc).numparams
 local vararg = debug.getinfo(TargetFunc).is_vararg
 local function GetArgs()
  local n, o = '(', 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
  for i = 1, paramcount do
   n = n .. o:sub(i, i)
   if i < paramcount and not (i + 1 == #o or i + 1 > #o) then 
    n = n .. ', ' 
   end
  end
  return n .. ')'
 end
 local func = {}
 local Body = (not equal and string.rep('  ', indent) or '') .. (IsProto and 'local ' or '') ..'function'
 local name1 = debug.getinfo(TargetFunc).name or (IsProto and 'proto_' .. tostring(rnum(1,99)) or ('NO_NAME_FOUND' .. tostring(rnum(1, 9999))))
 local Name = not ExcludeName and (' ' .. name1) or ''
 local ArgsBody = (vararg == 1 and '(...)') or GetArgs()
 local _1, Upvalues = pcall(getupvalues, TargetFunc)
 local _2, Constants = pcall(getconstants, TargetFunc)
 local _3, Protos = pcall(getprotos, TargetFunc)
 if not _1 then Upvalues = {'failed to get upvalues.'} end
 if not _2 then Constants = {'failed to get constants.'} end
 if not _3 then Protos = {'failed to get protos.'} end
 func.ENV = getfenv(TargetFunc)
 func._G = func.ENV._G
 indent+=1
 Body = Body .. Name .. ArgsBody .. '\n'
 local Found, Found1 = string.rep('  ', indent) .. '--[[ ROBLOX FUNCTIONS LIST\n', 0
 for i, v in Constants do
  if inrenv(v) then
   Found1+=1
   Found = Found .. string.rep('  ', indent+1) .. tostring(debug.getinfo(v).name) .. ' at index ' .. tostring(i) .. '\n'
  end
 end
 Body = (Found1 > 0 and Body .. Found .. string.rep('  ', indent-1) .. ' ]]\n') or Body 
 Body = Body .. string.rep('  ', indent) .. 'local upvalues = ' .. tableloop(Upvalues, indent, true) .. '\n'
 Body = Body .. string.rep('  ', indent) .. 'local constants = ' .. tableloop(Constants, indent, true) .. '\n'
 for i, v in Protos do
  if typeof(v) == 'function' then
   Body = Body .. DecompileFunction(v, indent, true, ExcludeName) .. '\n'
  end
 end
 return Body .. string.rep('  ', indent-1) .. 'end', func._G
end
function DecompileScript(Script, indent)
 indent = indent or 0
 local Code = '--[[ DECOMPILED WITH SIMPLEDECOMPILE V2\nhttps://discord.gg/gYhqMRBeZV ]]\nlocal script = ' .. GetFullName(Script) .. '\n'
 local _g, _s = nil, nil;
 for i, v in gcsenv(Script) do
  if typeof(v) == 'function' then
   local source, g = DecompileFunction(v, indent, false, false)
   if not _g then
    _g = g
    Code = Code .. '_G = ' .. tableloop(_g, indent, true) .. '\n'
   end
   Code = Code .. source .. '\n'
  elseif typeof(v) == 'table' and i ~= '_G' and i ~= 'shared' then
   Code = Code .. tableloop(v, indent, false) .. '\n'
  end
 end
 return Code
end
getgenv().decompile = DecompileScript
getgenv().Decompile = DecompileScript
return DecompileScript