local s = require(game:GetService("Players").LocalPlayer.PlayerScripts.ClientManager.Debounces)
while wait(0.2) do
   for i,v in pairs(s) do
       if type(i) == "string" and (i:find("skill") or table.find({"parry","dash"},i)) then
           s[i] = nil
       end
   end
end
--no cooldown not mine lol