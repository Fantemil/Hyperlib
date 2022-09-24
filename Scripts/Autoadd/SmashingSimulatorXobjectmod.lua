for i,v in pairs(getgc(true)) do
   if type(v) == "table" and rawget(v,"Force") ~= nil then
v.Force = 5000
v.ThrowDebounce = 0
end
end