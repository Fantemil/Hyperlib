local plr = game.Players.LocalPlayer
plr.Character.Boosts.Instinct:Destroy()
plr.CharacterAdded:Connect(function()
   plr.Character:WaitForChild("Boosts")
   plr.Character.Boosts:WaitForChild("Instinct")
   plr.Character.Boosts.Instinct:Destroy()
end)