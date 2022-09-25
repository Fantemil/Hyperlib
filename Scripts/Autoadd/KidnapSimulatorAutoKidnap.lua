while task.wait() do
for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "ClickDetector" and v.Parent then
        fireclickdetector(v)
    end
end
end