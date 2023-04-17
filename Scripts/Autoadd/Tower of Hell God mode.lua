while task.wait() do
    for i, v in pairs(workspace:GetDescendants()) do
        if v.Name == "kills" then
            v:Destroy()
        end
    end
end