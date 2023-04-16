local scripts = game:GetService("ReplicatedFirst"):GetChildren()

for i,v in next, getgc(false) do
   if typeof(v) == 'function' then
       if table.find(scripts,rawget(getfenv(v),"script")) then
           local funcname = getinfo(v).name
           hookfunction(v,newcclosure(function(...)
               warn(funcname,"Attempted to fire")
           end))
       end
   end
end