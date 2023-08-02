local pg = game.Players.LocalPlayer.PlayerGui
local run
run = game:GetService("RunService").RenderStepped:Connect(function()
   pg.ModeGui.LocalScript:Destroy()
   pg.ModeGui.Enabled = true
end)