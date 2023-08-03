if game:GetService("Players").LocalPlayer.PlayerGui.MainUI.CashDisplay.CashLabel.Text ~= "$infb" then
    local ohNumber1 = inf

    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(ohNumber1)
else
    return
end
for i, v in pairs(game:GetService("Workspace").Buttons:GetDescendants()) do
    if v.ClassName == "Model" then
        local ohString1 = v.Name

        game:GetService("ReplicatedStorage").RemoteObjects.RequestButtonPurchase:FireServer(ohString1)
    end
end
