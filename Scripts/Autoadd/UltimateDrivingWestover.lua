workspace.DescendantAdded:Connect(function(it)
    if it.Name == 'Present' then
       game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = it.CFrame
    end
end)

for i,it in pairs(workspace:GetDescendants()) do
    if it.Name == 'Present' then
       game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = it.CFrame
    end
end