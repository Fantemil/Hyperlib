local WantedMagics = {"Time","Reality Collapse","Celestial","Eclipse","Blood","","","","",""} -- Put what elements you want between the quotation marks
local WantedRarities = {"Heavenly","Legendary","Exotic","","",""} -- Put the name of the rarities you want between the quotation marks

-- Script will stop rolling if a wanted rarity or wanted magic is rolled. You can change between the quotation marks to whatever you want in the list below, as long as it's in the right category


--[[

   RARITIES:
   - Common
   - Uncommon
   - Rare
   - Exotic
   - Legendary
   - Heavenly

   ELEMENTS (AT TIME OF WRITING):
   Common Elements:
   - Fire
   - Water
   - Lightning
   Uncommon Elements:
   - Wind
   - Earth
   Rare Elements:
   - Light
   - Darkness
   - Metal
   Exotic Elements:
   - Eclipse
   - Blood
   Legendary Elements:
   - Celestial
   Heavenly Elements:
   - Reality Collapse
   - Time

--]]

repeat wait() until game.Players.LocalPlayer ~= nil

local HasGamepass = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId,20164545)

while wait(0.00001) do
   local Magic, Rarity
   if HasGamepass then
        Magic, Rarity = game:GetService("ReplicatedStorage").Events.Spin:InvokeServer(true)
   else
        Magic, Rarity = game:GetService("ReplicatedStorage").Events.Spin:InvokeServer(false)
   end
   if Magic == nil or Rarity == nil then
       print("Out of spins!")
       break
   end
   print("Rolled "..Magic.." with a rarity of "..Rarity)
   if table.find(WantedMagics,Magic) or table.find(WantedRarities,Rarity) then
       break
   end
end
game.Players.LocalPlayer.Character:BreakJoints()