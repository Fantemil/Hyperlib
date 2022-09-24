game:GetService("Workspace")["Rifle Assembly 2"].Name = "Rifle Assembly 3"
while true do
    for i, v in pairs(game:GetService("Workspace")["Rifle Assembly 1"]:GetDescendants()) do
    if v.Name == "ClickDetector" and v.Parent then
        fireclickdetector(v)
    end
end
for i, v in pairs(game:GetService("Workspace")["Rifle Assembly 2"]:GetDescendants()) do
    if v.Name == "ClickDetector" and v.Parent then
        fireclickdetector(v)
    end
end

for i, v in pairs(game:GetService("Workspace")["Rifle Assembly 3"]:GetDescendants()) do
    if v.Name == "ClickDetector" and v.Parent then
        fireclickdetector(v)
    end
end
wait(9)
end