for i,v in pairs(workspace.Map.Content:GetDescendants()) do
    if v:IsA("Model") and v.Name == "Damage" then
        v:Destroy()
    end
end