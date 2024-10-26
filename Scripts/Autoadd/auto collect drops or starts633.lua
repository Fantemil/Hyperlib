getgenv().autofarmnationbyjaz = not getgenv().autofarmnationbyjaz
task.spawn(function()
    while task.wait() do
        if not getgenv().autofarmnationbyjaz then
            break
        end
        for i,v in pairs(game:GetService("Workspace").DROPS:GetChildren()) do
            v.CFrame = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
            task.wait()
        end
    end
end)