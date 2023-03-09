local plr = game.Players.LocalPlayer
local plrTyc = plr.TycoonReference.Value

if plrTyc.AutoCollect.Value == false then
  firetouchinterest(plr.Character.HumanoidRootPart,plrTyc.StarterParts.AutoCollect.Switch,0)
  firetouchinterest(plr.Character.HumanoidRootPart,plrTyc.StarterParts.AutoCollect.Switch,1)
end

plrTyc.ButtonsFolder.ChildAdded:Connect(function(newButton)
   task.wait()
   if not newButton:FindFirstChild("GamePass") and newButton:WaitForChild("Price") then
       game:GetService("ReplicatedStorage").RespawnService:FireServer(newButton.Price.Value)
       firetouchinterest(plr.Character.HumanoidRootPart,newButton.Head,0)
       firetouchinterest(plr.Character.HumanoidRootPart,newButton.Head,1)
   end
end)

plrTyc.PurchasesFolder.ChildAdded:Connect(function(newThing)
   if newThing.Name == "Rebirth5" then
       game:GetService("ReplicatedStorage").rebirthEvent:FireServer()
   end
end)

task.wait()

for i,v in ipairs(plrTyc.ButtonsFolder:GetChildren()) do
   if not v:FindFirstChild("GamePass") and v:FindFirstChild("Price") then
       game:GetService("ReplicatedStorage").RespawnService:FireServer(v.Price.Value)
       firetouchinterest(plr.Character.HumanoidRootPart,v.Head,0)
       firetouchinterest(plr.Character.HumanoidRootPart,v.Head,1)
   end
end