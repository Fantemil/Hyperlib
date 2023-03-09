local key = tostring(game.Players.LocalPlayer.UserId * 2.5)
local function decodeAnticheatMessage(message)
   local decoded = ''

   for i = 1, math.min(#key, #message) do
       decoded = decoded..string.char(message:sub(i, i):byte() - (tonumber(key:sub(i, i)) or 1))
   end
   if #message > #key then
       for i = #key + 1, #message do
           decoded = decoded..string.char(message:sub(i, i):byte() - (i % 5))
       end
   end

   return decoded
end

local anticheatEvent = game:GetService('ReplicatedStorage').CoreReplicatedEvents.AnticheatEvent
local fakeAnticheatEvent  = anticheatEvent:Clone()
local functions = {
   'FireServer',
   'fireServer'
}

for _, func in pairs(functions) do
   local fireServer = anticheatEvent[func]
   fireServer = hookfunction(fireServer, function(self, ...)
       if self == anticheatEvent then
           local typeMessage = ({...})[1]
           if type(typeMessage) ~= 'string' or decodeAnticheatMessage(typeMessage) ~= 'key' then
               return fireServer(fakeAnticheatEvent, ...)
           end
       end

       return fireServer(self, ...)
   end)
end