local ItemsToCraft = {
 "Malachite Ingot",
 "Iron Ingot",
 "Copper Ingot",
 "Gold Ingot"
}
local Stats, rep = game.Players.LocalPlayer.PlayerStats, game:GetService"ReplicatedStorage"
local Inven, SmitSkill = Stats.Inventory, Stats.SmithingSkill

local function GetItemData(item) return rep.CraftingRecipes:FindFirstChild(item) end

local function EnoughMaterials(Material)
 for i, v in next, Inven.Value:split"," do
  if v:split"|"[1] == Material.Name and Material.Value <= tonumber(v:split"|"[2]) then return true end
 end
 return false
end

local function GotMaterials(item)
 for i, Material in next, GetItemData(item):GetChildren() do
  if Material.Name ~= "CraftingSkill" and Material:IsA"NumberValue" and (not string.find(Inven.Value, Material.Name) or not EnoughMaterials(Material)) then return false end
 end
 return true
end

local function CanCraft(item)
 if GetItemData(item) and GetItemData(item).CraftingSkill.Value <= SmitSkill.Value and GotMaterials(item) then return true end
 return false
end

_G.Again = true
task.wait(0.2)
_G.Again = false
while not _G.Again and task.wait() do
 for i, item in next, ItemsToCraft do
  if task.wait() and CanCraft(item) then
   rep.CraftingStart:InvokeServer()
   task.wait(0.1)
   rep.CraftingEnded:InvokeServer("SmithingSkill", item, true)
  end
 end
end