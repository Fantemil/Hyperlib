local SortByRarity = true -- common, uncommon, rare, epic, legendary
local SortBackwards = true
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SellEvent = ReplicatedStorage:WaitForChild("remotes"):WaitForChild("sellItemEvent")
local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
local Inventory = PlayerGui:WaitForChild("inventory"):WaitForChild("mainBackground"):WaitForChild("innerBackground"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame")
local function RefreshInventory()
 SellEvent:FireServer({["ability"] = {},["helmet"] = {},["chest"] = {},["weapon"] = {}})
end
local function GetInventorySize(Table)
 local Count = 0
 for i,v in pairs(Table) do
  for ii,v in pairs(v) do
   Count += i == "keys" and 0 or 1
  end
 end
 return Count
end
local RarityLayout = {["common"] = 1, ["uncommon"] = 2, ["rare"] = 3, ["epic"] = 4, ["legendary"] = 5}
local function SortInventory(Table)
 local function SortLocation(Location)
  for _,Label in pairs(Location:GetChildren()) do
   if Label:IsA("ImageLabel") then
    local itemType = Label:WaitForChild("itemType").Value
    local uniqueItemNum = Label:WaitForChild("itemType"):WaitForChild("uniqueItemNum").Value
    for i,v in pairs(itemType == "weapon" and Table.weapons or itemType == "helmet" and Table.helmets or itemType == "ability" and Table.abilities or itemType == "chest" and Table.chests) do
     if tonumber(string.sub(i,itemType == "weapon" and 8 or itemType == "helmet" and 8 or itemType == "ability" and 9 or itemType == "chest" and 7)) == uniqueItemNum then
      Label.LayoutOrder = SortByRarity and SortBackwards and 6-RarityLayout[v.rarity] or SortByRarity and RarityLayout[v.rarity] or SortBackwards and 999-tonumber(v.levelReq) or tonumber(v.levelReq)
     end
    end
   end
  end
 end
 SortLocation(Inventory)
 if PlayerGui:FindFirstChild("tradingGui") then SortLocation(PlayerGui:WaitForChild("tradingGui"):WaitForChild("mainBackground"):WaitForChild("innerBackground"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame")) end
 if PlayerGui:FindFirstChild("blacksmith") then SortLocation(PlayerGui:WaitForChild("blacksmith"):WaitForChild("Frame"):WaitForChild("innerFrame"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame")) end
 if PlayerGui:FindFirstChild("sellShop") then SortLocation(PlayerGui:WaitForChild("sellShop"):WaitForChild("Frame"):WaitForChild("innerFrame"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame")) end
end
ReplicatedStorage.remotes.updateLocalInventoryTable.OnClientEvent:Connect(function(UpdatedTable)
 if UpdatedTable then
  --itemtable = updatedtable;
  --print(GetInventorySize(UpdatedTable))
  SortInventory(UpdatedTable)
 end;
end); RefreshInventory()
PlayerGui.ChildAdded:Connect(function(v)
 if v.Name == "tradingGui" or v.Name == "blacksmith" or v.Name == "sellShop" then
  local ScrollFrame = v.Name == "sellShop" and PlayerGui:WaitForChild("sellShop"):WaitForChild("Frame"):WaitForChild("innerFrame"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame") or
   v.Name == "blacksmith" and PlayerGui:WaitForChild("blacksmith"):WaitForChild("Frame"):WaitForChild("innerFrame"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame") or
   v.Name == "tradingGui" and PlayerGui:WaitForChild("tradingGui"):WaitForChild("mainBackground"):WaitForChild("innerBackground"):WaitForChild("rightSideFrame"):WaitForChild("ScrollingFrame")
  ScrollFrame.ChildAdded:Wait()
  RefreshInventory()
 end
end)