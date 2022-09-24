local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", function(...)
   local Self,Args=...
   local Args = {Args}
if getnamecallmethod()=="FireServer" and tostring(Self)=="ExploitLog" then
return
end
   return OldNameCall(...)
end)
for i,v in pairs(getgc()) do if type(v)=="function" and debug.getinfo(v).name=="Log" then--I specify debug.getinfo because temple apparently doesn't add the debug functions to getgenv so you have to do debug.function to not error (cryeing rn)
hookfunction(v,function()end)
end end