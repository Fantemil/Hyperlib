local Controller = require(game.Players.LocalPlayer.PlayerScripts.Client.Controllers.JumpingController)
while task.wait() do
   pcall(function()
       game.Players.LocalPlayer.Character.Humanoid:SetAttribute('JumpPower', 10000000)
       Controller:Rise()
   end)
end