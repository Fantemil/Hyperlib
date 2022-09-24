_G.OnlyFarmSpins = false -- If this is set to true, the script will keep farming spins no matter what you roll when you reset your level
_G.WantedMagics = {"Time","Reality Collapse","Celestial","Eclipse","Blood","","","","",""} -- Put what elements you want between the quotation marks
_G.WantedRarities = {"Heavenly","Legendary","Exotic","","",""} -- Put the name of the rarities you want between the quotation marks

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
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Aidez/elemental_awakening/main/spin_farm_and_autospin'),true))()