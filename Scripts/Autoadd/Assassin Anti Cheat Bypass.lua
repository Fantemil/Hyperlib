local isexecutorclosure = is_synapse_function or isexecutorclosure

for i,v in next, getgc() do
   if type(v) == "function" and islclosure(v) and not isexecutorclosure(v) then
       local Source = getinfo(v).source
       if Source:find("BAC") or Source:find("ReplicatedFirst.Animator") or Source:find("PlayerScripts.reeeee") then
           hookfunction(v, function()
               
           end)
           warn("Hooked lmao")
       end
   end
end

for i,v in next, getreg() do
   if type(v) == "function" and islclosure(v) and not isexecutorclosure(v) then
       local Source = getinfo(v).source
       if Source:find("BAC") or Source:find("ReplicatedFirst.Animator") or Source:find("PlayerScripts.reeeee") then
           hookfunction(v, function()
               
           end)
           warn("Hooked lmao")
       end
   end
end