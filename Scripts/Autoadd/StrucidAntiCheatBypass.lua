local Numbers = {5, 6, 9, 23, 18, 19, 11, 23, 17, 20, 21, 39} -- All the possible anticheat remotes
local OldNamecall
OldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
       local args = {...}
       local method = getnamecallmethod()

       if tostring(self) == "RemoteEvent" and getnamecallmethod() == "FireServer" then
           if args[1] == 1 and args[2] == Numbers[table.find(Numbers,args[2])] then
                   return
           end
       end

return OldNamecall(self, ...)
end)