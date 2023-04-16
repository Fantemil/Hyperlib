local useloadedmodules = getloadedmodules and true or false
local modulescript

if useloadedmodules then
   for i,v in getloadedmodules() do
       if not v.Parent then
           modulescript = v:GetDebugId()
       end
   end
else
   local cons = getconnections(game:GetService("ReplicatedStorage"):WaitForChild("Pass").OnClientEvent)
   local con1 = cons[1]
   modulescript = con1 and con1.Function and rawget(getfenv(con1.Function),"script")
   modulescript = modulescript and not modulescript.Parent and modulescript:GetDebugId()
end

if not modulescript or typeof(modulescript) == "string" then return end

local info = debug.info
local old = {}

for i,v in next, getgc(false) do
   if typeof(v) == 'function' then
       local script = rawget(getfenv(v),"script")
       script = script and script:GetDebugId()
       if script and script == modulescript then
           warn("Function found:",v,info(v,"n"))
           table.insert(old,{["func"] = v})
       end
   end
end

local function Safetostring(userdata)
if type(userdata) == "table" or type(userdata) == "userdata" then
local rawmetatable = getrawmetatable(userdata)
local cachedstring = rawmetatable and rawget(rawmetatable, "__tostring")

if cachedstring then
rawset(rawmetatable, "__tostring", nil)
local safestring = tostring(userdata)
rawset(rawmetatable, "__tostring", cachedstring)
return safestring
end
end
return tostring(userdata)
end

for i,v in next, old do
   local func = v.func
   v.old = hookfunction(func,newcclosure(function(...)
       warn("The AMAZING anticheat attempted to trigger:",info(func,"n"),Safetostring(...))
       return
   end))
end

getgenv().disable = function()
   for i,v in next, old do
       hookfunction(v.func,v.old)
   end
   table.clear(old)
end