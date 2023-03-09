game:GetService("UserInputService").InputEnded:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Quote then
        game:GetService("ReplicatedStorage").ShopE:FireServer(1, {game:GetService("Players").LocalPlayer.PlayerGui.MainGui.ShopFrame.SelectedListing.Value, 0.5})
    end
end)