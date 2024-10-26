local function createESPForComputerTables()
    for _, item in ipairs(workspace:GetDescendants()) do
        if (item:IsA("Model") or item:IsA("Part")) and item.Name == "ComputerTable" then
            local targetPart = nil
            
            if item:IsA("Model") then
                targetPart = item.PrimaryPart or item:FindFirstChildWhichIsA("BasePart")
            elseif item:IsA("Part") then
                targetPart = item
            end
            
            if targetPart then
                local espBox = Instance.new("BoxHandleAdornment")
                espBox.Size = targetPart.Size
                espBox.Adornee = targetPart
                espBox.Color3 = Color3.new(0, 0, 1)
                espBox.AlwaysOnTop = true
                espBox.ZIndex = 10
                espBox.Transparency = 0.7
                espBox.Parent = targetPart
            end
        end
    end
end

createESPForComputerTables()