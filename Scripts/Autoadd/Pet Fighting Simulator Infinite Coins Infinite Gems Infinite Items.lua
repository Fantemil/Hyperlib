local items = {"item3","item4","item5","item6","item7","item8","item9","item10","item11","item12","item13","item14","item15","item16","item17","item18","item19",}
for i,v in pairs(items) do
  local dielan = {
      [1] = v,
      [2] = {
          [1] = -math.huge, -- coins, change this if u want to be safe
          [2] = "GameCoin",
        },
      [3] = 100000 -- items, change this if u want more or less
    }
game:GetService("ReplicatedStorage").Remotes.ItemBuy:FireServer(unpack(dielan))
local items = {"item1","item2",}
for i,v in pairs(items) do
  local dielan = {
      [1] = v,
      [2] = {
          [1] = -math.huge, -- gems, change this if u want to be safe
          [2] = "GameCoin2",
        },
      [3] = 1 -- dont change this
    }
game:GetService("ReplicatedStorage").Remotes.ItemBuy:FireServer(unpack(dielan))
end
end