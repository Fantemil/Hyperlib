local function FormatScript(Script)
    local Formatted = ""
    local IndentLevel = 0
    local IndentSize = 4
    local InComment = false
    
    for Line in Script:gmatch("([^\r\n]+)") do
        local TrimmedLine = Line:gsub("^%s*(.-)%s*$", "%1")
        
        if TrimmedLine:find("^%-%-") then
            Formatted = Formatted .. string.rep(" ", IndentLevel * IndentSize) .. TrimmedLine .. "\n"
        elseif TrimmedLine:find("end") then
            IndentLevel = IndentLevel - 1
            Formatted = Formatted .. string.rep(" ", IndentLevel * IndentSize) .. TrimmedLine .. "\n"
        elseif TrimmedLine:find("function") or TrimmedLine:find("do") or TrimmedLine:find("then") then
            Formatted = Formatted .. string.rep(" ", IndentLevel * IndentSize) .. TrimmedLine .. "\n"
            IndentLevel = IndentLevel + 1
        else
            Formatted = Formatted .. string.rep(" ", IndentLevel * IndentSize) .. TrimmedLine .. "\n"
        end
    end
    
    return Formatted
end

local Script = [[
local Lmao = true

if Lmao then
print"Lmao"
Lmao = not Lmao
end
]]

print(FormatScript(Script))