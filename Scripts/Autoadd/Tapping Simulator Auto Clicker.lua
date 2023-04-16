while true do 
    game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    wait()
    game:GetService("ReplicatedStorage").Events.Rebirth:FireServer((game.Players.LocalPlayer.PlayerGui.UI.QuickRebirth.CurrentRebirth.Amount.LocalizedText))
    wait()
end