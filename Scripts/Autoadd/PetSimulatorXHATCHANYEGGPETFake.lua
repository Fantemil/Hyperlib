function HatchEgg(Pet)
   local pet = Pet
   for i,v in pairs(game.ReplicatedStorage.Game.Pets:GetChildren()) do
       if string.split(tostring(v), ' - ')[2] == pet then
           pet = string.split(tostring(v), ' - ')[1]
       end
   end
   local tbl = {
       {
       nk = 'Preston',
       idt = '69',
       e = false,
       uid = '69',
       s = 999999999999,
       id = pet,
   }}
   local egg
   for i_,script in pairs(game.ReplicatedStorage.Game.Eggs:GetDescendants()) do
       if script:IsA('ModuleScript') then
           if typeof(require(script).drops) == 'table' then
               for i,v in pairs(require(script).drops) do
                   if v[1] == pet then
                       egg = require(script).displayName
                   end
               end
           end
       end
   end
   if Pet == 'Huge Cat' then egg = 'Cracked Egg' end
   for i,v in pairs(getgc(true)) do
       if (typeof(v) == 'table' and rawget(v, 'OpenEgg')) then
           v.OpenEgg(egg, tbl)
       end
   end
end

HatchEgg('Huge Pumpkin Cat')