local delay_hook = nil 
delay_hook = replaceclosure(delay, newcclosure(function(...)
   local Arguments = ({...});
   
   if getcallingscript() and getcallingscript().Name ~= "GunClient" then 
       return delay_hook(...);
   end
   
   table.foreach(Arguments, function(Index, Value)
       if Value and type(Value) == "function" then 
           local valid_constants = getconstants(Value);
           -- I know I can just do getconstants(Arguments[2]) but idk they might change it 
           
           if valid_constants and table.find(valid_constants, "CoordinateFrame") then 
               setconstant(Value, 12, "focus")
           end
       end
   end)
   
   return delay_hook(...);
end));