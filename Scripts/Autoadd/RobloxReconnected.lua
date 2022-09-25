game:GetService("GuiService").ErrorMessageChanged:Connect(function()
wait (0.1) game:GetService("TeleportService"):Teleport(game.PlaceId)
    end); 