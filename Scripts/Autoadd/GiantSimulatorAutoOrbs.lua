 getgenv().tog = true-- turns it on or off, false means it will be turned off, true means it will be on, you can change it to turn it on and vice versa
    while getgenv().tog == true do wait()
    for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v.Name == "ResourceNode" then
            while v.NodeType.Value ~= 0 do wait()
            local root = game.Players.LocalPlayer.Character.HumanoidRootPart
            root.CFrame = CFrame.new(v.Position)
            game.Players.LocalPlayer.Character.Humanoid.Jump = true
            end
        end
    end
end