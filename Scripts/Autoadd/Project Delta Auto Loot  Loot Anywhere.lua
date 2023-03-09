local ItemToSearchFor = "AKM" -- Item you want
local BlacklistedNames = {"Stock", "Front", "Handle", "Hider", "Brake"} -- Blacklisted Items

function IsBlacklisted(Name)
   local Pass = false
   
   for NameIndex,BlacklistedName in pairs(BlacklistedNames) do
       if Name:lower():find(BlacklistedName:lower()) then
          Pass = true
          break
       end
   end
   
   return Pass
end

local Module = require(game.Players.LocalPlayer.PlayerGui.MainGui.Modules.InventoryFunctions)
local InventoriesSearched = {}
for _,v in next, workspace:GetDescendants() do
   if v:IsA("StringValue") and v.Name:lower():find(ItemToSearchFor:lower()) and IsBlacklisted(v.Name) == false and v.Parent.Name == "Inventory" and not (InventoriesSearched[v.Parent.Parent] or InventoriesSearched[v.Parent.Parent.Parent.Parent]) then
       local ObjectToLoot = v.Parent.Parent
       if ObjectToLoot:IsA("Model") then else
           ObjectToLoot = ObjectToLoot.Parent.Parent
       end
       
       InventoriesSearched[ObjectToLoot] = true
       
       if ObjectToLoot.PrimaryPart then
           if not game.Players:GetPlayerFromCharacter(ObjectToLoot) then
               Module.self.GameplayVariables.CurrentContainer.Value = ObjectToLoot
               game:GetService("ReplicatedStorage").Remotes.Loot:InvokeServer(Module.self.GameplayVariables.CurrentContainer.Value, game.Players.LocalPlayer.Character.PrimaryPart.Position)
               Module:ToggleBackpack(true, true)
               
               wait(0.5)
               
               for _,Cont in next, game.Players.LocalPlayer.PlayerGui.MainGui.MainFrame.BackpackFrame.Loot.Inventory.ScrollingFrame:GetDescendants() do
                   if Cont.Name == "Item" and Cont:IsA("ObjectValue") and Cont.Value and Cont.Value.Name:lower():find(ItemToSearchFor:lower()) and IsBlacklisted(Cont.Value.Name) == false then
                       game:GetService("ReplicatedStorage").Remotes.QuickLoot:FireServer(Cont.Parent.Name)
                   end
               end
               
               wait(0.5)
               game:GetService("ReplicatedStorage").Remotes.Loot:InvokeServer(nil)
           end
       end
   end
end