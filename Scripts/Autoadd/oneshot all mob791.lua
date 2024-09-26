while task.wait() do 
 for i,v in pairs(game.Workspace.Live:GetChildren()) do 
     if v:IsA("Model") and v:FindFirstChild("Humanoid") and v.Humanoid.Health < v.Humanoid.MaxHealth  then 
         v.Humanoid.RigType = "R15"
     end 
    end
end