while wait(1) do
    pcall(function()
        local player = game.Players.LocalPlayer
        local rootPart = player.Character["HumanoidRootPart"]
        local crate = game.Workspace:FindFirstChild("Basic")
        if firetouchinterest then
            firetouchinterest(rootPart,crate,0)
            firetouchinterest(rootPart,crate,1)
        else
            crate.CanCollide = false
            crate.Position = rootPart.Position
        end
    end)
end