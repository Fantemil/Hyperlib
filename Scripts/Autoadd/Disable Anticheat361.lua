local char = game.Players.LocalPlayer.Character
char:WaitForChild("Cheat Detector")["Security Lock"].Disabled = true
char:WaitForChild("Cheat Detector")["Event Handler"].Disabled = true
char:WaitForChild("Cheat Detector")["Regular Checks"].Disabled = true
char:WaitForChild("Cheat Detector")["Change Signals"].Disabled = true
game.Players.LocalPlayer.CharacterAdded:Connect(function(chara)
    chara:WaitForChild("Cheat Detector"):WaitForChild("Security Lock").Disabled = true
    chara:WaitForChild("Cheat Detector"):WaitForChild("Event Handler").Disabled = true
    chara:WaitForChild("Cheat Detector"):WaitForChild("Regular Checks").Disabled = true
    chara:WaitForChild("Cheat Detector"):WaitForChild("Change Signals").Disabled = true
end)