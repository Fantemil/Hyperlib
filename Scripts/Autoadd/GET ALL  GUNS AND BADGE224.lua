local player = game.Players.LocalPlayer for i,p in pairs(game.Workspace.Interaction.Guns:GetChildren()) do if p.Hitbox then p.Hitbox.CanCollide = false p.Hitbox.Position = player.Character.HumanoidRootPart.Position end end