local replacements = {
    ["r"] = "w",
    ["l"] = "w",
    ["ove"] = "uv",
    ["!"] = ""
}
local namecall

namecall = hookmetamethod(game,"__namecall",newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
   
    if tostring(self) == 'SayMessageRequest' and method == 'FireServer' then
        for i,v in next, replacements do
            args[1] = args[1]:lower():gsub(i,v)
        end
        return namecall(self,unpack(args))
    end
    return namecall(self,...)
end))