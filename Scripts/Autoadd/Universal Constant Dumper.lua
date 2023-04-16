local FileName = "Constants.dump"
local Code = function()
-- Code
end

local ConvertedCode = Code
local Constants = debug.getconstants(ConvertedCode)
writefile(FileName,"")
for k,v in pairs(Constants) do
   appendfile(FileName,v.."\n")
end