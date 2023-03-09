for i,v in pairs(getgc()) do
   if getinfo(v).name:lower():match('egg') and not getinfo(v).name:lower():match('display') then
       old = hookfunction(v, function()
           return wait(9e9)
       end)
   end
end