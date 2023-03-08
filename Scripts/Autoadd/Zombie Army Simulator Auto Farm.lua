--<< https://www.roblox.com/games/9529019408/ kalas#1330
local client = game.Players.LocalPlayer
local modules = require(client.PlayerScripts:WaitForChild("ClientModules")) --<< get the modules
local petsHandler = require(client.PlayerScripts.Handlers.PetsHandler) --<< get the pets handler
local spawnedPets = debug.getupvalue(petsHandler.init, 5) --<< get the spawned pets table

local network = {}
do --<< was gonna make a whole gui for this but i'm lazy
 local _network = require(game.ReplicatedStorage.Modules.Network)

 function network:FireServer(...)
  return _network:call(...)
 end
end

local util = {}
do --<< self explanatory
 function util:getEquippedId(): table
  local ids = {}
  local storage = modules.Variables.Data.Pets.Storage --<< they store the ids here
  for i, v in next, storage do
   local equipped = v.equipped or false --<< if it's equipped or not
   if equipped then
    table.insert(ids, i) --<< insert the id
   end
  end
  return ids
 end

 function util:getNearestNPCs(Radius: number): table
  local mobs = {}
  for _, v in next, workspace["__THINGS"].Enemies:GetChildren() do
   local part = v:FindFirstChild("HumanoidRootPart") and v.HumanoidRootPart or v.PrimaryPart
   if not part then
    continue --<< if it doesn't have a part, then skip that mfer
   end
   if client:DistanceFromCharacter(part.Position) > Radius then
    continue --<< if it's too far, then skip that mfer
   end
   table.insert(mobs, { name = v.Name, distance = client:DistanceFromCharacter(part.Position) })
  end
  table.sort(mobs, function(a, b)
   return a.distance < b.distance --<< sort the table by distance
  end)
  return mobs
 end

 function util:isAlreadyAttacking(petID): boolean
  for _, v in next, spawnedPets do
   local uid = v.uid
   if uid == petID then --<< if the pet is already attacking, then skip that mfer
    return (v.attacking or false) --<< returns a boolean
   end
  end
  return false --<< sanity check
 end

 function util:attackNPCs(npcs: table)
  local ids = self:getEquippedId() --<< get the ids of the equipped pets
  if #ids > 0 then
   for i = 1, #npcs do --<< loop through the npcs
    local id = ids[i]
    if not id then --<< if there's no more ids, then
     break --<< break the loop
    end
    if self:isAlreadyAttacking(id) then
     continue --<< if the pet is already attacking, then skip that mfer
    end
    network:FireServer("SelectNpc", npcs[i].name, id) --<< self explanatory
    network:FireServer("FarmNpc", id, npcs[i].name) --<< self explanatory
   end
  end
 end
end

while true do
 task.wait()
 local npcs = util:getNearestNPCs(250) --<< get the nearest npcs
 util:attackNPCs(npcs) --<< attack the nearest npcs
end