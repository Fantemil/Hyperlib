while task.wait() do
for i,v in pairs(workspace.CubeEvent.Cubes:GetChildren())do
if v:IsA("Part") and v.Name == "Cube" then
workspace[game:GetService("Players").LocalPlayer.Name].HumanoidRootPart.CFrame = v.CFrame
end
end
end