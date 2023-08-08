while wait(1) do
    local gamemode = game.Workspace:FindFirstChild("Gamemode")
 
    if gamemode and gamemode.Value == "Murder" then
        local crateModel = game.Workspace.WorldIgnore.Pickups:FindFirstChild("CrateModel")
 
        if crateModel then
            local cratePart = crateModel:FindFirstChild("Part")
 
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