while true do
    local movingParts = Workspace:GetDescendants()

    for _, part in pairs(movingParts) do
        if part:IsA("BasePart") and (part.Name == "Union" or part.Name == "BUUUUUUUUS") then
            part:Destroy()
        end
    end

    wait(1)
end