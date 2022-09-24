--always on: auto tool, auto refill, auto craft, auto equip best, auto collect chests, auto collect rings
--also grabs the secret pet, idfk why lmao
local rankup = true --rank up or dont
local egg = "Robot Egg" --stand near egg for this to work
local bool = false --second arg in the egg buy thing, probably for triple
local autodeletebelow = 35000 --delete pets with lower multiplier than this
local buyall = {"Fuels", "Fires"} --will constantly buy all of these ({"Fuels", "Fires"}, {"Fuels"} and {"Fires"} are the only acceptable values for this, otherwise will error)
game:GetService("Players").LocalPlayer.Pets.ChildAdded:Connect(function(a)
   game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PetService.CraftPet:InvokeServer(a)
   if a.CoinMultiplier.Value < autodeletebelow then
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PetService.DeletePet:FireServer(a)
   end
end)
game:GetService("RunService").RenderStepped:Connect(function()
   for i, v in pairs(game:GetService("Workspace").Rewards:GetChildren()) do
       firetouchinterest(v.ChestTouchPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
       firetouchinterest(v.ChestTouchPart, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
   end
   for i, v in pairs(game:GetService("Workspace").Hops:GetChildren()) do
       firetouchinterest(v.Goal, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
       firetouchinterest(v.Goal, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
   end
   firetouchinterest(game:GetService("Workspace").Map.Refill.RefillHitbox, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
   firetouchinterest(game:GetService("Workspace").Map.Refill.RefillHitbox, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
   if rankup then
       for i, v in pairs(game:GetService("ReplicatedStorage").Items.Ranks:GetChildren()) do
           if not game.Players.LocalPlayer.RanksOwned:FindFirstChild(v.Name) then
               game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ShopService.BuyItem:InvokeServer(v.Name)
           end
       end
   end
   game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.PetService.EquipBest:InvokeServer()
   for i, v in pairs(buyall) do
       game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ShopService.BuyAll:InvokeServer(v)
   end
   game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Hatch:InvokeServer(egg, bool)
end)
repeat task.wait()
   game.Players.LocalPlayer.Character.MainTool:Activate()
until false