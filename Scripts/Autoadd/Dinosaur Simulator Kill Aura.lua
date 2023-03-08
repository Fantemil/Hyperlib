--// Variables
local Client = game.Players.LocalPlayer
local ClientRemoteEvent = require(game.ReplicatedStorage.ClientData).ClientRemoteEvent
local ConfigData = require(game.ReplicatedStorage.DataConfig.GetConfigData)
local ClientDinosaur = Client:GetAttribute("DinosaurName")
local attackId = ConfigData:GetDinosaurDataTable(ClientDinosaur).Attack
local Event = ClientRemoteEvent.FireServer
local RunService = game:GetService("RunService")

--// TOGGLE
getgenv().Enabled = true --// Change this to false to disable the script

local function closest() --// We don't talk about the getdescendants, their folders are built weird
 local list = {}
 for _, v in next, workspace.Monsters:GetDescendants() do
  if v.Name == "FoodHp" and v.Value > 0 then
   local part = v.Parent.RootPart
   if not part then
    continue
   end
   table.insert(list, { mob = v.Parent, distance = Client:DistanceFromCharacter(part.Position) })
  end
 end
 table.sort(list, function(t0, t1)
  return t0.distance < t1.distance
 end)
 if list[1] then
  return list[1].mob
 end
 return nil
end

RunService.Heartbeat:Connect(function()
 if Enabled then
  Event("AttackRemoteEvent", "AttackStaticFood", closest(), attackId, ClientDinosaur)
 end
end)

-- kalas#1330
-- optional, game:GetService("SoundService").BGSound:Destroy() --// Remove the background music