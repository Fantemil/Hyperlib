for o,b in pairs(getgc(true)) do if type(b) == 'function' and
   (tostring(getfenv(b).script) == 'Client: hello world' or tostring(getfenv(b).script) == 'Client: better fly') then
   for i,v in pairs(debug.getconstants(b)) do
pcall(function()
           debug.setconstant(b,i,"hi")
           end)
   end
end
end