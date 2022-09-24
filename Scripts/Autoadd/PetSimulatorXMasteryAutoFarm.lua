local petNet = loadstring(game:HttpGet("https://rawscripts.net/raw/Pet-Simulator-X!-PSX-Safe-Networking-3732"))()
local saveData = petNet:getPath("Save","Get")
local invokeRemote = petNet:getPath("Network","Invoke")
local petInfo = petNet:getPath("Directory","Pets")
local targetPet

local myData = saveData(game:GetService("Players").LocalPlayer).Pets
for i,v in next, myData do
   local petData = petInfo[v.id]
   if v.nk=="Caroline" and not (petData.rarity=="Exclusive" or petData.rarity=="Mythical" or petData.isGift) then
       targetPet = v
       break
   end
end
if not targetPet then
   return warn("Invalid or non-existent pet!")
end
for i = 1,750 do
   task.spawn(function()
       invokeRemote("Enchant Pet", targetPet.uid)
   end)
end