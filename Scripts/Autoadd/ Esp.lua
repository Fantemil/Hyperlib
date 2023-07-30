for i,v in pairs(game.Workspace:GetChildren()) do
    if v.Name == "soldier_model" then 
        local highlight = Instance.new("Highlight")
        highlight.Parent = v
    end
end

game.Workspace.ChildAdded:Connect(function(v)
    if v.Name == "soldier_model" then 
        local highlight = Instance.new("Highlight")
        highlight.Parent = v
    end
end)