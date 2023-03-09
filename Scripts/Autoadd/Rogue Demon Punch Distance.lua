for i,v in pairs(getgc()) do
   if type(v) == "function" and not is_synapse_function(v) and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.Knit.Controllers.Combat.FistController then
       for k,n in pairs(getconstants(v)) do
           if k == 31 and n == 10 then
               setconstant(v,k,30)
           end
       end
   end
end