local r = game:GetService("ReplicatedStorage")
local b = r:WaitForChild("Cubes"):WaitForChild("1048576")
local c = b:GetChildren()

workspace.ChildAdded:Connect(function(p)
    if p.ClassName ~= "Part" then
        return
    end
    
    p:ClearAllChildren()
    
    for i, v in pairs(c) do
        local n = v:Clone()
        n.Parent = p
    end
    
    p.Name = b.Name
    p.BrickColor = b.BrickColor
    
end)