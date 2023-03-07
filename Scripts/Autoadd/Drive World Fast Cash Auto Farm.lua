game:GetService("Workspace").Gravity = 500

for i, v in pairs(game:GetService("Workspace").Cars:GetChildren()) do
    if tostring(v.Owner.Value) == game:GetService("Players").LocalPlayer.Name then 
        while wait(1) do 
            v.Main.CFrame = CFrame.new(0, 500, 0)
        end
    end
end