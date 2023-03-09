bruh = nil
for i,v in pairs(getgc()) do
   if type(v) == 'function' then
       if debug.getinfo(v).name == "Click" then
           bruh = v
       end
   end
end
task.wait(1)
while task.wait() do
for i = 1,1000 do
bruh(UDim2.new(0,0,0),1)
end
end