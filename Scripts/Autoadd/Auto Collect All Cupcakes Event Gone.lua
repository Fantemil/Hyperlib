    getgenv().CollectAllCakes = true  -- false to turn it off
    local Humanoid = game.Players.LocalPlayer.Character.HumanoidRootPart
    warn("Made By MHD444")
    while wait(0.1) and getgenv().CollectAllCakes do
        for i,v in pairs(game.Workspace.Scripts.CollectCupcakes.Storage:GetDescendants()) do
            if v.Name == "TouchInterest" then
                firetouchinterest(Humanoid, v.Parent, 0)
                firetouchinterest(Humanoid, v.Parent, 1)
            end
        end
    end