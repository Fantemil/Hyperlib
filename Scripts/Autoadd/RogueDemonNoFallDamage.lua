for i,v in pairs(getgc()) do
   if type(v) == "function" and not is_synapse_function(v) and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.Knit.Controllers.Character.FallDamageController then
       for k,n in pairs(getconstants(v)) do
          if k == 4 and n == 20 then
               setconstant(v,k,20000)
            end
       end
   end
end