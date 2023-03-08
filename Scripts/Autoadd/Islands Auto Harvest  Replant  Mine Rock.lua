_G.Enable = true
_G.Harvest = true
_G.Replant = true
_G.MineRock = true

wait(.5)
local Client = game.Players.LocalPlayer
local NetManaged = game:GetService("ReplicatedStorage").rbxts_include.node_modules.net.out._NetManaged
function Harvest(plant,replant)
   task.spawn(function()
       NetManaged.CLIENT_HARVEST_CROP_REQUEST:InvokeServer({
           ["player"] = Client,
           ["player_tracking_category"] = "join_from_web",
           ["model"] = plant
       })
           if replant then
           NetManaged.CLIENT_BLOCK_PLACE_REQUEST:InvokeServer({
               upperBlock = false,
               cframe = plant.CFrame,
               player_tracking_category = "join_from_web",
               blockType = plant.Name
           })
       end
   end)
end
function DamageBlock(block)
   if not block:FindFirstChild("Health") then return end
   local Norm = Client.Character:GetPrimaryPartCFrame()
   local Part
   Part = block:FindFirstChild("trunk") or block:FindFirstChild("RockStage") and block[block.RockStage.Value]
   task.spawn(function()
       NetManaged.CLIENT_BLOCK_HIT_REQUEST:InvokeServer({
           player_tracking_category = "join_from_web",
           part = Part,
           block = block,
           norm = Norm,
           pos = block.Position - Norm.p
       })
   end)
end
while _G.Enable and wait(.25) do
   for i,v in pairs(workspace.Islands:GetChildren()[1].Blocks:GetChildren()) do
       local Distance = Client:DistanceFromCharacter(v.Position)
       if Distance < 30 then
           local Harvestable = v:FindFirstChild("Harvestable",true)
           local RockStage = v:FindFirstChild("RockStage",true)
           if Harvestable and Harvestable.Value and _G.Harvest then
               Harvest(v,_G.Replant)
               -- wait(.15)
           end
           if RockStage and _G.MineRock then
               DamageBlock(v)
               -- wait(.15)
           end
       end
   end
end