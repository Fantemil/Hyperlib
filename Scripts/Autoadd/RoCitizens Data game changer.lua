--Script: game:GetService("Players").LocalPlayer.PlayerGui.CustomizeCharacter.CosmeticHandler
--USER: mxkxkks (Banned for grooming underage kids)

local v1 = {
 ["Hair2"] = "7754514824"   --Enter hair ID
}
local v2 = {
 ["Pants1"] = {
  ["Id"] = 869245892     --Enter pants ID without gamepass
 }, 
 ["Hair1"] = {
  ["Id"] = 7754514824    --Duplicate of #1
 }, 
 ["CharacterName"] = {
  ["Value"] = "Fartty"   --Bypass naem
 }, 
 ["SkinColor"] = {
  ["Color"] = {
   [1] = 1, 
   [2] = 0.85,        --Skin customizer, don't bother changing if you dont know what you're doing
   [3] = 0.74
  }
 }, 
 ["Age"] = {
  ["Value"] = 22         --Bypass Age system
 }, 
 ["Hair2"] = {
  ["Id"] = 7754514824    --Duplicate of #1
 }, 
 ["OutfitName"] = "Outfit 8", 
 ["Extras2"] = {            --Unlimited Outfits and name interchange 
  ["Id"] = 4508445398
 }, 
 ["Extras1"] = {
  ["Id"] = 5270699726    --Seems to not work at the moment, will be fixed soon.
 }, 
 ["Face1"] = {              --Use any face ID thats not in the game
  ["Id"] = 10907549
 }
}
local EVENT = game:GetService("ReplicatedStorage").Relays.Character.BuyCart

EVENT:InvokeServer(v1, v2)