localName = game:GetService("Players").LocalPlayer.Name
while true do
    pcall(function()
        con = false
        health = nil
     trees = game:GetService("Workspace").Trees
     localPlayer = game:GetService("Players").LocalPlayer

     root = localPlayer.Character.HumanoidRootPart
     ws = localPlayer.Character.Humanoid.WalkSpeed
     TweenService = game:GetService("TweenService")
        closestdist = 99999999999999999
        closesttree = nil
     for i,v in pairs(trees:GetChildren()) do
         if v.Name == 'Normal' and v:FindFirstChild("PhysicalTree") and v.PhysicalTree:FindFirstChild("Middle") then
            dist = (localPlayer.Character.HumanoidRootPart.Position-v.PhysicalTree.Middle.Position).Magnitude
            if dist < closestdist and v.PhysicalTree.Middle.Anchored == true then
                closestdist = dist
                closesttree = v.PhysicalTree.Middle
            end
        end
     end
     
     if closesttree then
         local speed = closestdist/ws
         local a = TweenService:Create(localPlayer.Character.HumanoidRootPart,TweenInfo.new(speed,Enum.EasingStyle.Linear),{CFrame = closesttree.CFrame})
         a:Play()
         print(closestdist)
         a.Completed:Connect(function()

             ct = tick()
             repeat
                 if not localPlayer.Character:FindFirstChild('Axe') then localPlayer.Backpack.Axe.Parent = localPlayer.Character end
           firetouchinterest(closesttree, game:GetService("Workspace")[localName]["Axe"].Handle, 0)
           wait()
           if not localPlayer.Character:FindFirstChild('Axe') then localPlayer.Backpack.Axe.Parent = localPlayer.Character end
           firetouchinterest(closesttree, game:GetService("Workspace")[localName]["Axe"].Handle, 1)
             until closesttree.Anchored == false or (tick()-ct) > 10
             con = true
         end)
     end
     repeat wait() until con
    end)
end