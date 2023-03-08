spawn(function()
    while wait(0.1) do
        for i, v in next, game:GetService("Players"):GetChildren() do
            pcall(function()
                if v~= game:GetService("Players").LocalPlayer and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                    while v.Character:WaitForChild("Humanoid").Health > 0 do
                        wait();
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame;
                        for x, c in next, game:GetService("Players"):GetChildren() do
                            if c ~= game:GetService("Players").LocalPlayer then game.ReplicatedStorage.meleeEvent:FireServer(c) end
                        end
                    end
                end
            end)
            wait()
        end
   end
end)