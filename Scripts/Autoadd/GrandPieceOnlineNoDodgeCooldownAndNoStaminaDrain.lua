local X;
local func;
local script = game.Players.LocalPlayer.Backpack.Movements
X = hookmetamethod(game, "__namecall", function(self, ...)
   if tostring(self) == "takestam" then
       return;
   end
   return X(self, ...)
end)
for i,v in pairs(getreg()) do
   if type(v) == 'function' and getfenv(v).script then
       if getfenv(v).script == script then
           local upvalues = getupvalues(v)
           if tostring(upvalues[12]) == "Ragdolls" then
               func = v
           end
       end
   end
end
spawn(function()
   while wait() do
       setupvalue(func, 6, false)
   end
end)