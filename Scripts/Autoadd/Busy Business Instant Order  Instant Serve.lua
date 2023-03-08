local currentPlot;
for i, v in pairs(workspace.Plots:GetChildren()) do
   if v:FindFirstChild("Owner") and v.Owner.Value == game.Players.LocalPlayer then
       currentPlot = v
   end
end

local useMachine = game:GetService("ReplicatedStorage").Communication.UseMachine
local orderCustomer = game:GetService("ReplicatedStorage").Communication.CustomerOrder
local serveCustomer = game:GetService("ReplicatedStorage").Communication.ServeCustomer
local ServerScriptService = game:GetService("ServerScriptService")
task.spawn(function()
   while task.wait(1) do
       for i, v in pairs(currentPlot.Customers:GetChildren()) do
           if not v:GetAttribute("OrderTaken") then
               orderCustomer:FireServer(v)
           end
       end
   end
end)

function getItem(Item)
   local vStation;
   for i, v in pairs(currentPlot.Objects:GetChildren()) do
       if v:FindFirstChild("Item") and v.Item.Value == Item then  
           vStation = v
       end
   end

   useMachine:FireServer(vStation, false)
   useMachine:FireServer(vStation, true)
end


task.spawn(function()
   while task.wait(1) do
       for i, v in pairs(currentPlot.Customers:GetChildren()) do
           if not (v:GetAttribute("Count") == 0) and v:GetAttribute("Count") and tonumber(v:GetAttribute("Count")) >= 1 then
               local customerItem = v:GetAttribute("Item")
               if not customerItem then continue end
               for i = 1, v:GetAttribute("Count") do
                   getItem(customerItem)
                   serveCustomer:FireServer(v)
               end
           end
       end
   end
end)