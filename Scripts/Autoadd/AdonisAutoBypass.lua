local Namecall
Namecall = hookmetamethod(game, '__namecall', function(self, ...)
   local Caller = tostring(getcallingscript())
   local Method = getnamecallmethod()
   
   if Caller == 'ClientMover' and Method == 'GetService' then
       return
   end
   
   return Namecall(self, ...)
end)

warn('[Adonis Autobypass]: this game is running with autobypass!')