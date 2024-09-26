
 local lootFolder = workspace:WaitForChild("Loot_Drops")


 local function activateItem(item)
     local activatedEvent = item:FindFirstChild("Activated")
     if activatedEvent and activatedEvent:IsA("BindableEvent") then
         activatedEvent:Fire()
     end
 end
 
 local function activateAllLoot()
     for _, item in pairs(lootFolder:GetChildren()) do
         activateItem(item)
     end
 end
 
 activateAllLoot()
 

 lootFolder.ChildAdded:Connect(function(child)
     
     wait(0.1)
     
     activateItem(child)
 end)