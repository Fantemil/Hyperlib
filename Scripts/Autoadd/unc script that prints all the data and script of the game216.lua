for _, obj in pairs(game:GetDescendants()) do
    print(obj:GetFullName())
    if obj:IsA("Script") or obj:IsA("LocalScript") then
        print(obj.Source)
    end
end