-- Ability [
--     Buso,Soru,Geppo,KenUpgrade
-- ]
--Example
local Ability = "Geppo" -- Ability Name
-- or
-- local Ability = {Buso,Soru,Geppo,KenUpgrade}
if type(Ability) == 'string' then
   game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,Ability)
elseif type(Ability) == 'table' then
   for i,v in next , Ability do
       game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v)
   end
end