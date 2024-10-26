local fz = Instance.new("Folder")
fz.Name = "Cloned"
fz.Parent = game.Workspace

game.Workspace.DescendantRemoving:Connect(function(v)
    if v.Parent and v.Parent.Name == "DemoBuild" and v.Name:lower() == "block" then 
        local c = v:Clone() 
        c.Name = v.Name .. "_Cloned"
        c.Parent = fz
        c.Transparency = 0.6
    end
end)

game.Workspace.DescendantAdded:Connect(function(v)
    if v.Parent and v.Parent.Name == "DemoBuild" and v.Name:lower() == "block" then 
        for _, m in pairs(fz:GetChildren()) do 
            if m.Name:match("_Cloned") then 
                m:Destroy() 
            end
        end
    end
end)