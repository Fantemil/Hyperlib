for i, v in pairs(game:GetService("Workspace").Game:GetDescendants()) do
    if v.Name == "DoorPrompt" then
        local clone = v:Clone()
        clone.Parent = v.Parent
        local par = v.Parent
        v:Destroy()
        clone.Triggered:Connect(function()
            par.Parent.Transparency = 0.75
            par.Parent.CanCollide = false
            wait(3)
            par.Parent.Transparency = 0
            par.Parent.CanCollide = true
        end)
    end
end