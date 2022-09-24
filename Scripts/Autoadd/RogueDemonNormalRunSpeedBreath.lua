for i,v in pairs(getgc()) do
   if type(v) == "function" and not is_synapse_function(v) and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.Knit.Controllers.Movement.SprintController then
       for k,n in pairs(getupvalues(v)) do
           if type(n) == "table" then
               for key,value in pairs(n) do
                   n["BreathSprint"] = 52
                   n["SprintSpeed"] = 47
               end
           end
       end
   end
end