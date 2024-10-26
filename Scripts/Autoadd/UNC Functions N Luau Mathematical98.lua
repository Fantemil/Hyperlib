local oldstring = loadstring
    getfenv().loadstring = function(code)
    local source = code
    source = source:gsub("(%a+)%s*([%+%-%*/])=%s*", "%1 = %1 %2 ")
    return oldstring(source)
end
-- only works through loadstrings for += and -=