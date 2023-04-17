getgenv().Speed = 1000 --Replace ur speed here, Default is 1000

local plr = game:GetService("Players").LocalPlayer

for i,v in next, getgc() do
   if typeof(v) == "function" and getfenv(v).script == plr.PlayerScripts.StarterPlayerScriptsFolder.LocalPetHandler then
       for i2,v2 in next, getupvalues(v) do
           if type(v2) == "number" then
               setupvalue(v,i2,getgenv().Speed)
           end
       end
   end
end