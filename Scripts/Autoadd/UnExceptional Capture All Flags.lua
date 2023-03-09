for i, v in pairs(game:GetService("Workspace").TempFlags:GetDescendants()) do
    print(v)
    if v.Name == "ClickDetector" then
        print("Fired")
        fireclickdetector(v)
        end
end