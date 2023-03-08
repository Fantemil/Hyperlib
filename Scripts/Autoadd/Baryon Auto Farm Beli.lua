_G.Auto = true -- true/false

while wait() do
    pcall(function()
        if _G.Auto then
            fireclickdetector(game:GetService("Workspace").Click.ClickDetector)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6.00066042, 16.9855766, 275.752991, 0.811810255, -1.39054883e-08, 0.583921373, 4.26309725e-08, 1, -3.54547289e-08, -0.583921373, 5.36756453e-08, 0.811810255)
            for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
                if v.Name == "Orb Red" or v.Name == "Orb Blue" or v.Name == "Orb Black" then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                end
            end
        end
    end)    
end