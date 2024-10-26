local DeathGuiTextLabel = game:GetService("Players").LocalPlayer.PlayerGui.DeathGui.Frame.TextLabel
DeathGuiTextLabel:GetPropertyChangedSignal("Text"):Connect(function()
    DeathGuiTextLabel.Text = "Death Text Here"
end)