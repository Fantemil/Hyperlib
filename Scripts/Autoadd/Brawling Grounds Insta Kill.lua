local OldNameCall
OldNameCall = hookmetamethod(game, "__namecall", newcclosure(function(self,...)
   local args = {...}
   local NamecallMethod = getnamecallmethod()
   if NamecallMethod:lower() == "fireserver" then
       if self.Name == "Damage" then
           for i=1,100 do
               OldNameCall(self,...)
           end
       end
   end
   return OldNameCall(self,...)
end))