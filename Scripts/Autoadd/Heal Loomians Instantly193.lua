local key;
for i,v in pairs(getgc()) do
   if type(v) == "function" then
       local upvalues = getupvalues(v)
       if #upvalues == 3 and type(upvalues[2]) == "function" and getinfo(upvalues[2]).name == "InvokeServer" and tostring(upvalues[3]) == "GET" then
           key = upvalues[1]
       end
   end
end
game.ReplicatedStorage.GET:InvokeServer(key, "heal", "HealthCenter", "HealMachine1")