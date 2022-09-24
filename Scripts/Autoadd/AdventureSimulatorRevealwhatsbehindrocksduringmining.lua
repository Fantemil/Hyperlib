while true do
   
game.Players.LocalPlayer.PlayerGui.FrontGui.Frame.Name = "Frame1"

local Blocks = game.Players.LocalPlayer.PlayerGui.FrontGui.Frame.Frame.ImageButton

for _, child in ipairs(Blocks:GetChildren()) do
child.ImageTransparency = 0.4
end

wait()
end