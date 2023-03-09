getgenv().AutoFarm = true
getgenv().AutoCollectDrop = true

function GetFighters()
   return workspace.Fighters[game.Players.LocalPlayer.Name]:GetChildren()
end

workspace.Drops.ChildAdded:Connect(function(Child)
   if getgenv().AutoCollectDrop then
       if Child:IsA('BasePart') then
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Child.CFrame
       end
   end
end)

while wait() do
   if getgenv().AutoFarm then
       for _ll,Area in pairs(workspace.Enemies:GetChildren()) do
           if #Area:GetChildren() > 0 and getgenv().AutoFarm then
               for _,Enemy in pairs(Area:GetChildren()) do    
                   if getgenv().AutoFarm then
                       game.ReplicatedStorage.Knit.Services.EnemyService.RF.ToggleEnemy:InvokeServer(Enemy)
                       for __,Fighter in pairs(GetFighters()) do
                           game.ReplicatedStorage.Knit.Services.EnemyService.RE.StartFighterRuntime:FireServer(tostring(Fighter))
                       end
                   end
               end
           end
       end
   end
end