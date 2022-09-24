_G.Enabled = true
while task.wait(3) do

    if _G.Enabled == true then

        game.Players.LocalPlayer.Character.Humanoid.Jump = true

        for i,v in pairs(game:GetService("Workspace").LevelSections.Start.ScavangerHunt:GetChildren()) do

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame

        end

    end
end