local function main(f)
   if typeof(f) == "function" then
       local UpValues = debug.getupvalues(f)
       local Constants = debug.getconstants(f)
       local Protos = debug.getprotos(f)
       
       for _, Proto in next, Protos do
           main(Proto)
       end
       for _, UpValue in next, UpValues do
           if typeof(UpValue) == "function" then
               main(Proto)
           else
               if (_ == 15 or _ == 19) and typeof(UpValue) == "string" then
                   debug.setupvalue(f, _, "hacked")
               end
           end
       end
   end
end

for _, func in next, getgc() do
   if islclosure(func) then
       local _ENV = getfenv(func)
       local Script = _ENV.script
       if Script and Script.Name == "Client" then
           main(func)
       end
   end
end

local __namecall __namecall = hookmetamethod(game, "__namecall", function(...)
   local Args = {...}
   if getnamecallmethod() == "InvokeServer" and Args[4] == "hacked" then
       return "hacked"
   end
   return __namecall(...)
end)