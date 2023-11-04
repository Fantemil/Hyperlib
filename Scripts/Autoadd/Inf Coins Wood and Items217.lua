local ticklemypickle = game:GetService("ReplicatedStorage")
local brosdeviouswidit = ticklemypickle:WaitForChild("Events"):WaitForChild("AddCollectGoodsEvent")

for i = 1, 1000 do
   local args = {
       [1] = 1
   }

   brosdeviouswidit:FireServer(unpack(args))
end