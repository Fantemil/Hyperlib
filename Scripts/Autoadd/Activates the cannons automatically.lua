local CannonShot = game:GetService("Workspace").MainPanels

while true do
    for i, v in pairs(CannonShot:GetChildren()) do
        local Cannon = v

        if Cannon:FindFirstChild("ProximityPrompt") then
            print(Cannon.CFrame)

            if Cannon.CFrame.Y > 0 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Cannon.CFrame

                wait(0.3)

                fireproximityprompt(Cannon.ProximityPrompt)

                wait(0.3)
            end
        end
    end

    wait(70)
end