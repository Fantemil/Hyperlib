for i,v in pairs(game:GetService("Workspace").Camera:GetDescendants()) do
    if v.ClassName == "Part" or v.ClassName == "UnionOperation" then
        for i,b in pairs(game:GetService("Workspace").Stage.Dice:GetDescendants()) do
            if b.Name == "TouchInterest" then
                b.Parent.CFrame = v.CFrame
                wait()
            end
        end
    end
end