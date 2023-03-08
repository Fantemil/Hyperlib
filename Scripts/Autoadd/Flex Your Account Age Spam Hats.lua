mapfuck = true

while mapfuck == true do
   wait(1)
   game.Players.LocalPlayer.Character.Humanoid.Health = 0
   game:GetService("ReplicatedStorage").Events.Server.DropHats:FireServer()
end