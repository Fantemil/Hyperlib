local oldnc
oldnc = hookmetamethod(game,"__namecall", newcclosure(function(name, ...)
       local Args = {...}
       if not checkcaller() and tostring(name) == "RemoteEvent" and Args[1] == "SetPlayerMinigameResult" then
           Args[2] = true
       end
       return oldnc(name, unpack(Args))
   end))