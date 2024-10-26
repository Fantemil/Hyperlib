getgenv().lol = true -- set to false to disable
task.spawn(function()
        while true do wait()
            if not getgenv().lol then
                break
            end
            for i,v in pairs(workspace.Particles:WaitForChild("Money"):GetChildren()) do
                if v.Name == "Bundle" then
                    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.CFrame
                end
            end
        end
end)
