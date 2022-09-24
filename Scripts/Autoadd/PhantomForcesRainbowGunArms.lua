Blacklisted = {"Flame", "SightMark", "SightMark2A", "Tip", "Trigger"}

workspace.CurrentCamera.DescendantAdded:Connect(function(O)
    if O:IsA("BasePart") and not table.find(Blacklisted, O.Name) then
        spawn(function()
            while wait() do
                O.Color = Color3.fromHSV((tick() % 5 / 5), 1, 1)
                O.Transparency = 0.8
                O.Material = Enum.Material.ForceField
            end
        end)
    end
end)