while wait(1) do
    local mode = game.Workspace:FindFirstChild("Gamemode")
    
    if mode and mode.Value == "Murder" then
        local crate = game.Workspace.WorldIgnore.Pickups:FindFirstChild("CrateModel")

        if crate then
            local cratePart = crate:FindFirstChild("Part")

            if cratePart then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cratePart.CFrame
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Teleported", Text = "You have been teleported to the CrateModel."})
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "CrateModel exists but 'Part' was not found."})
            end
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Error", Text = "CrateModel not found."})
        end
    end
end