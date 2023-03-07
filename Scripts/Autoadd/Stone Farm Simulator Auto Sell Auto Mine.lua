local client = game.Players.LocalPlayer
local variables = require(client.PlayerScripts.ClientManager.Variables)
local island = variables.playerIsland

local utilities = {}
do
 function utilities:getClosestOre(): Model
  local ores = {}
  for _, spots in next, island:GetChildren() do
   for _, ore in next, spots:GetChildren() do
    local model = ore:FindFirstChildWhichIsA("Model")
    local health = model and model:GetAttribute("Health")
    if health and health > 0 then
     table.insert(
      ores,
      { target = model, dist = client:DistanceFromCharacter(model:GetPivot().Position) }
     )
    end
   end
  end
  table.sort(ores, function(a, b)
   return a.dist < b.dist
  end)
  if #ores > 0 then
   return ores[1].target
  end
 end

 function utilities:Sell()
  if variables.player.leaderstats.Stone.Value ~= 0 then
   variables.Remotes.SellLogs:FireServer()
  end
 end

 function utilities:BuyPlots()
  self:Sell() --<< :troll:
  local plots = variables.playerIsland:GetChildren()
  for _, plot in next, plots do
   if plot:FindFirstChild("Buyer") then
    local price = plot.Buyer:FindFirstChild("Price") and plot.Buyer.Price.Value
    if price and price <= variables.player.leaderstats.Cash.Value then
     variables.Remotes.BuyPlot:FireServer(plot.Buyer)
    end
   end
  end
 end
end

--[[ if you wish to see their remotes/stuff you can mess around with

for i,v in next, variables do
    print(i,v)
end

for i,v in next, variables.Remotes do --<< they store all remotes there :troll:
    print(i,v)
end

]]

while true do
 task.wait()
 local ore = utilities:getClosestOre()
 if ore then
  variables.Remotes.HitTree:FireServer(ore)
  utilities:BuyPlots()
 end
end