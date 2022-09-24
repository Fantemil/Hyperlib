workspace.__MAP.Eggs.DescendantAdded:Connect(function(a)
   if a.Name == 'EggInfo' then
       for i,v in pairs(a.Frame.Pets:GetChildren()) do
           if v:IsA('Frame') and v.Thumbnail.Chance.Text == '??' then
               local pet
               for _,tbl in pairs(getgc(true)) do
                   if (typeof(tbl) == 'table' and rawget(tbl, 'thumbnail')) then
                       if tbl.thumbnail == v.Thumbnail.Image then
                           pet = string.split(tostring(tbl.model.Parent), ' - ')[1]
                       end
                   end
               end
               for _,egg in pairs(game.ReplicatedStorage.Game.Eggs:GetDescendants()) do
                   if egg:IsA('ModuleScript') and typeof(require(egg).drops) == 'table' then
                       for _,drop in pairs(require(egg).drops) do
                           if pet == '266' then v.Thumbnail.Chance.Text = '0.000002%' return end
                           if drop[1] == pet then
                               v.Thumbnail.Chance.Text = drop[2] .. '%'
                           end
                       end
                   end
               end
           end
       end
   end
end)

local lib = require(game.ReplicatedStorage.Framework.Library)
table.foreach(lib.Save.Get(), print)

local oldworld = lib.Save.Get().World
while wait(0.1) do
   if lib.Save.Get().World ~= oldworld then
       oldworld = lib.Save.Get().World
       workspace.__MAP.Eggs.DescendantAdded:Connect(function(a)
           if a.Name == 'EggInfo' then
               for i,v in pairs(a.Frame.Pets:GetChildren()) do
                   if v:IsA('Frame') and v.Thumbnail.Chance.Text == '??' then
                       local pet
                       for _,tbl in pairs(getgc(true)) do
                           if (typeof(tbl) == 'table' and rawget(tbl, 'thumbnail')) then
                               if tbl.thumbnail == v.Thumbnail.Image then
                                   pet = string.split(tostring(tbl.model.Parent), ' - ')[1]
                               end
                           end
                       end
                       for _,egg in pairs(game.ReplicatedStorage.Game.Eggs:GetDescendants()) do
                           if egg:IsA('ModuleScript') and typeof(require(egg).drops) == 'table' then
                               for _,drop in pairs(require(egg).drops) do
                                   if pet == '266' then v.Thumbnail.Chance.Text = '0.000002%' return end
                                   if drop[1] == pet then
                                       v.Thumbnail.Chance.Text = drop[2] .. '%'
                                   end
                               end
                           end
                       end
                   end
               end
           end
       end)
   end
end