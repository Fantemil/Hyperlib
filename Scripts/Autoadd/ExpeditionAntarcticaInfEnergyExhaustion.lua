local Client = game:GetService('Players').LocalPlayer
local hook
hook = hookmetamethod(game, '__newindex', function(o,k,v)
   if o.Parent == Client.Inventory and o.ClassName == 'IntValue' then
       if k == 'Value' then
           return math.huge
       end
   end
   return hook(o,k,v)
end)