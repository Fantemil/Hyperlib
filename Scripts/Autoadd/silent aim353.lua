game.Workspace.Zombies.DescendantAdded:Connect(function(z) 
    local h = z:FindFirstChild("Head")
    if z:IsA("Model") and h then
        h.Size, h.Transparency = Vector3.new(50, 50, 50), 1
    end
end)