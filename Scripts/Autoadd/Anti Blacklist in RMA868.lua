game.Workspace.DescendantAdded:Connect(function(Object)
    game.RunService.Stepped:Wait()

    if not string.find(Object.Name, "BarrierFor") then return end

    Object.CFrame = CFrame.new(9e9, 9e9, 9e9)
end)