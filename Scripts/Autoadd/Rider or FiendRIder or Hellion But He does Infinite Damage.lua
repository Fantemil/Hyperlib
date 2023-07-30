local Hellion = require(game:GetService("ReplicatedStorage").Creatures.Host.Class1338)

Hellion.Stats.Power = "inf"

game.StarterGui:SetCore("SendNotification", {
Title = "Made by NixelPixel/NICKISBAD.";
Text = "Script Was Executed By: " .. game.Players.LocalPlayer.DisplayName .. " / " .. game.Players.LocalPlayer.Name;
Duration = 10;
})