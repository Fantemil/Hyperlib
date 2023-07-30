local Player = game.Players.LocalPlayer
local Place = workspace.Towers[Player.Name].TowerClient.Trigger

local Studs = 10000 -- desired amout here go too high and you will crash

Player.Character.Humanoid:MoveTo(Place.Position)
Player.Character.Humanoid.MoveToFinished:Connect(
   function()
       task.wait(1)
       Player.Character.PrimaryPart.Position = Vector3.new(-73, 2200, Studs)
       task.wait(2)
       Player.Character.Humanoid.Health = 0
   end
)