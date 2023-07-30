for _,v in pairs(workspace.Eggs:GetChildren()) do
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Mouse.CFrame
    task.wait(0.1)
    fireclickdetector(v.Mouse.ClickDetector)
end