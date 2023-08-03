local hrp = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
hrp.Parent = nil
hrp:Clone()
hrp.Parent = game.Players.LocalPlayer.Character
hrp.Name = "Humanoid"
game.StarterGui:SetCore("SendNotification", {Title="God Mode"; Text="God Mode Activated"; Duration=5;})