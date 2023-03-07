function breakFunction(func)
   for i,v in pairs(getconstants(func)) do
       pcall(function()
           setconstant(func, i, 'game.Workspace')
       end)
   end
   for i,v in pairs(getupvalues(func)) do
       pcall(function()
           setconstant(func, i, game.Workspace)
       end)
   end
end


for i,v in pairs(getgc()) do
   if type(v) == 'function' and islclosure(v) and not(is_synapse_function(v)) then
       if string.match(getinfo(v).source, 'BubbleChat') then
           breakFunction(v)
       end
   end
end