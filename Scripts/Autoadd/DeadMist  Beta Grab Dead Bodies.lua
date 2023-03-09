-- Grab dead bodies
for i,v in pairs(game:GetService("Workspace").Remains:GetChildren()) do
    if v.ClassName == "Model" then
        v.Body.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
        wait(6)
    end
end