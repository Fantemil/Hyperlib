local oldHook;
oldHook = hookmetamethod(game, "__namecall", function(self, ...)
   local args = {...};

   if (self.Name == "ServerEvent") and args[1] == "Accuracy" then
       args[2] = 1;
   end;

   return oldHook(self, unpack(args));
end);