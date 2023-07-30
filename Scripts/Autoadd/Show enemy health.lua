for i,v in pairs(workspace.Living:GetChildren())do
     v.Humanoid.HealthDisplayType =  1  
end

workspace.Living.ChildAdded:Connect(function(child)
    child:WaitForChild("Humanoid").HealthDisplayType = 1
    
    
end)