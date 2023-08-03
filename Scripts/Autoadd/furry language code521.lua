dataTypeWhitelist = {
    "function",
    "table",
}
function FurryFunctions(...)
    local args = {...}
    for i,v in ipairs(args) do
        if typeof(v) == "string" then
            local typeCheck = typeof(loadstring("return "..v)())
            if table.find(dataTypeWhitelist, typeCheck) then
                if typeCheck == "table" then setreadonly(loadstring('return '..v)(),false)end
                local String = v
                String = string.gsub(String, '[RrLl]', function(captured)
                    return captured:upper() == captured and 'W' or 'w'
                end)String = string.gsub(String, '([Tt])h', function(captured)
                    return captured:upper() == captured and 'D' or 'd'
                end)
                loadstring(String..' = '..v)()
                print(('Old: "%s", New: "%s", Type: "%s"'):format(v, String, typeCheck))
            end
        end
    end
end

convertToFurryArray = {'print', 'CFrame', 'CFrame.lookAt', 'string', 'string.format'} -- add the rest yourself

FurryFunctions(unpack(convertToFurryArray))

task.wait(1)
--THIS IS THE LIMIT, AFTER THIS LIMIT U TYPE UR CODE.
pwint(stwing.fowmat('%s', 'Hi UwU'))