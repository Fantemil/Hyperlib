function update()
    for i,v in pairs(game:GetService("Workspace").Entities:GetDescendants()) do
        if v:IsA("Part") or v:IsA("MeshPart") then
            if not v:FindFirstChild("BoxHandleAdornment") then
                v.Transparency = 1
                local box = Instance.new("BoxHandleAdornment", v)
                box.AlwaysOnTop = true
                box.Adornee = v
                box.Size = v.Size
                box.Color3 = Color3.fromRGB(196, 40, 28)
                box.ZIndex = 1
            end
        end
    end
end
    
while wait() do
update()
end