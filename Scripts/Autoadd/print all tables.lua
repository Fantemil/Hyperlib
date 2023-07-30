local function printx(...)
    local indentLevel = 0
    local lineCount = 1

    local function indent()
        return string.rep("\t", indentLevel)
    end

    local function recursivePrint(...)
        for i, v in pairs(...) do
            if type(v) == "table" then
                local nestedTableString = tostring(v)
                if i then
                    print(string.format("Line %d: %s[%s] %s", lineCount, indent(), i, nestedTableString))
                else
                    print(string.format("Line %d: %s%s", lineCount, indent(), nestedTableString))
                end
                indentLevel = indentLevel + 1
                lineCount = lineCount + 1
                recursivePrint(v)
                indentLevel = indentLevel - 1
            elseif type(v) == "function" then
                print(string.format("Line %d: %s\t---> [%s] = %s", lineCount, indent(), i, tostring(v)))
                lineCount = lineCount + 1
                local funcInfo = debug.getinfo(v, "uS")
                if funcInfo and funcInfo.name then
                    print(string.format("Line %d: %s\t\tFunction Name: %s", lineCount, indent(), funcInfo.name))
                    lineCount = lineCount + 1
                end
                if funcInfo and funcInfo.source then
                    local sourceCode = funcInfo.source
                    local argList = sourceCode:match("%b()")
                    if argList then
                        print(string.format("Line %d: %s\t\tArguments: %s", lineCount, indent(), argList))
                        lineCount = lineCount + 1
                    end
                end
                local upvalues = debug.getupvalues(v)
                if upvalues and #upvalues > 0 then
                    indentLevel = indentLevel + 1
                    print(string.format("Line %d: %s\t\tUpvalues:", lineCount, indent()))
                    lineCount = lineCount + 1
                    for idx, upvalue in ipairs(upvalues) do
                        print(string.format("Line %d: %s\t\t[%d] = %s", lineCount, indent(), idx, tostring(upvalue)))
                        lineCount = lineCount + 1
                    end
                    indentLevel = indentLevel - 1
                end
            else
                print(string.format("Line %d: %s\t---> [%s] = %s", lineCount, indent(), i, tostring(v)))
                lineCount = lineCount + 1
            end
        end
        task.wait()
    end

    recursivePrint(...)
end


--Example Usage
local Library = require(game:GetService("ReplicatedStorage"):WaitForChild("Library")) --Pet Simulator X Library
printx(Library)
