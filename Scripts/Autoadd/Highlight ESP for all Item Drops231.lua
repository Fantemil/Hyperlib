local folder = game.Workspace:FindFirstChild("ItemDrops")
if folder then
    for _, object in ipairs(folder:GetChildren()) do
        if object:IsA("Model") then
            local highlight = Instance.new("Highlight")
            highlight.Parent = object
        end
    end
end