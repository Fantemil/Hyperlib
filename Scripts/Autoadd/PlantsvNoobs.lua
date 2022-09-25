 -- Collect Brains
game.ReplicatedStorage.Remotes.TellPlayerNewPower.OnClientEvent:Connect(function(egg,salad,cum,cock)
    -- Variable
    local femboy = workspace.Games[egg]
    -- Grab
    game.ReplicatedStorage.Remotes.CashPower:FireServer(egg,salad)
    -- Update
    femboy:SetAttribute("Brains",femboy:GetAttribute("Brains")+cum)
    -- Remove
    femboy.ThingsToReset:WaitForChild(cock.Name):Destroy()
end)

-- Collect Suns
game.ReplicatedStorage.Remotes.TellPlayerNewSun.OnClientEvent:Connect(function(egg,salad,cum,cock)
    -- Variable
    local femboy = workspace.Games[egg]
    -- Grab
    game.ReplicatedStorage.Remotes.CashSun:FireServer(egg, salad);
    -- Update
    femboy:SetAttribute("Suns",femboy:GetAttribute("Suns")+cum)
    -- Remove
    femboy.ThingsToReset:WaitForChild(cock.Name):Destroy()
end)