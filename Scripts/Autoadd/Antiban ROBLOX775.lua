--Credit: StepBroFurious
local X;
X = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "Ban" then
       local eval1 = {false}
       local eval2 = {false}
       local args = {...}
       if debug.validlevel(3) and self.Parent == nil then
           local stack = debug.getstack(3)
           local counter = 0
           local expected;
           for i,v in pairs(stack) do
               if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                   counter = counter + 1
               elseif type(v) == "number" then
                   if type(expected) == "number" then
                       expected = expected + v
                   else
                       expected = v
                   end
               end
           end
           if counter == expected then
               eval1 = {true, counter+5}
           end
       end
       if eval1[1] then
           if #args == eval1[2] then
               local counter = 0
               local outgoingkey;
               for i,v in pairs(args) do
                   if v == game.Players.LocalPlayer.Name or v == "Ban" or v == "Packet" or v == "Network" then
                       counter = counter + 1
                   elseif tostring(i) == "userdata: 0x000000001bdfb8ea" then --current outgoing key address, could change if roblox updates
                       outgoingkey = v
                   end
                   if counter == eval1[2] then
                       eval2 = {true, outgoingkey}
                   end
               end
           end
           if eval2[1] then
               game:GetService("NetworkClient"):SetOutgoingKBPSLimit(0, outgoingkey) --stops ban packets (requires outgoing key to set it to 0)
               game.Players.LocalPlayer:Kick("Game attempted to ban you but was blocked") --kicked because it'll detect the namecall being blocked
               return wait(9e9)
           end
       end
   end
   return X(self, ...)
end)