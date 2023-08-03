-- First script if you executer many balls spawn 
local Event = game:GetService("ReplicatedStorage").Events.BigBlast
Event:FireServer()

--Access to Clear gamepass without buying it
-- Try both and see which work

game.Players.LocalPlayer.PlayerGui.Admin.ClearGUI.ClearButton.Enabled = true

game.Players.LocalPlayer.Name = "pahreh619"
game.Players.LocalPlayer.Character.Humanoid.Health = 0
