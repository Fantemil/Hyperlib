for i,v in pairs(getgc()) do
   if getinfo(v).name:lower():match('hatchin') then
       old = hookfunction(v, function()
           return wait(9e9)
       end)
   end
end