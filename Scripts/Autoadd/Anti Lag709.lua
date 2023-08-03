while task.wait() do
    spawn(function()
        for i, v in pairs(game:GetService("ReplicatedStorage").Assets.Guns:GetDescendants()) do
            if v.Name == "effect" then
                v:Destroy()
            end
        end
    end)
    
    spawn(function()
        for i, b in pairs(game:GetService("Workspace")["__THINGS"].Ragdolls:GetChildren()) do
            b:Destroy()
        end
    end)
    
    spawn(function()
        for i, a in pairs(game:GetService("Workspace")["__DEBRIS"].Guns:GetChildren()) do
            if a.Name ~= (game:GetService("Players").LocalPlayer.Character.Name) then
                a:Destroy()
            end
        end
    end)
end