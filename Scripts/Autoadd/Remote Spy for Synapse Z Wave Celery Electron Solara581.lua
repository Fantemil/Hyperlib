local spaceText = ''
local spaceCount = 0
local function doSpace(amount)
    spaceText = ''
    for i = 1, amount*4 do 
        spaceText = spaceText .. ' '
    end 
end 

local function resetSpace()
    spaceText = ''
    spaceCount = 0
end 

local remoteArgs = '\n'
local function formatArgs(i, tbl)
    local index = typeof(i) == 'string' and ('["%s"]'):format(tostring(i)) or ('[%s]'):format(tostring(i))
    
    remoteArgs = remoteArgs .. spaceText .. index .. ' = {\n'
    spaceCount = spaceCount + 1 
    doSpace(spaceCount)
    
    for i,v in next, tbl do 
        if typeof(v) == 'table' then 
            formatArgs(i, v)
        else 
            local index = typeof(i) == 'string' and ('["%s"]'):format(tostring(i)) or ('[%s]'):format(tostring(i))
            local value = typeof(v) == 'string' and ('"%s"'):format(tostring(v)) or ('%s'):format(tostring(v))
            remoteArgs = remoteArgs .. spaceText .. index .. ' = ' .. value .. '\n'
        end 
    end
    
    spaceCount = spaceCount - 1 
    doSpace(spaceCount)
    remoteArgs = remoteArgs .. spaceText .. '}\n'
end 

local mt = getrawmetatable(game)
local old = mt.__namecall 

setreadonly(mt, false) 

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    if method == 'FireServer' or method == 'InvokeServer' then 
        local callerScript = rawget(getfenv(0), 'script')
        remoteArgs = string.format('Remote Call Detected!\nRemote Path: %s\nRemote Type: %s\nCaller Script: %s\n', self.GetFullName(self), method, callerScript.GetFullName(callerScript))
        if #args > 0 then
            formatArgs(self.Name, args)
        else 
            remoteArgs = remoteArgs .. 'Arguments: None'
        end
        print(remoteArgs)
    end 
    return old(self, ...)
end)