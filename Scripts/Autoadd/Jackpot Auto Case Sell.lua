local Crates = require(game:GetService("ReplicatedStorage").Modules.Crates)

local Settings = {
   Case = "Kings of the Night"
}

local openCase = function(case_name, amount)
   local case = game:GetService("ReplicatedStorage").Communication.Case:InvokeServer(case_name, amount)
   return case
end

local sellItem = function(item_name, amount)
   game:GetService("ReplicatedStorage").Communication.Sell:FireServer(item_name, amount)
end

local purchaseableAmount = function(case)
   if (Crates[case]) then
       local Money = game:GetService("Players").LocalPlayer.Data.Stats.Money.Value
       return math.round(Money / Crates[case].Price)
   end
end
game:GetService("RunService").RenderStepped:Connect(function()
   local Amount = purchaseableAmount(Settings.Case)

   if Amount ~= 0 then
       coroutine.resume(coroutine.create(function()
           for i=1, Amount do
               local Case = openCase(Settings.Case, 1)
       
               sellItem(Case[1], 99999999)
           end
       end))
   end
end)