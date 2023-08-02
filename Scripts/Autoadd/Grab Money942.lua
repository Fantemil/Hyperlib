workspace.DescendantAdded:Connect(function(moneybag)
    if moneybag.Name =="Money_Bag" then
        wait(0.2)
        firetouchinterest(moneybag.Outer,  game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        wait()
        firetouchinterest(moneybag.Outer,  game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
        wait(0.2)
        firetouchinterest(game:GetService("Workspace").Deposit.Collider,  game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
        wait()
        firetouchinterest(game:GetService("Workspace").Deposit.Collider,  game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
    end
end)