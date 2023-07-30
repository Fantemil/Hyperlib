setting = settings().Network
local Effect = Instance.new("ColorCorrectionEffect")
Effect.Parent = game.Lighting
Effect.Saturation = -1
Effect.Brightness = 0
Effect.Contrast = 0

toggle = false

Effect.Enabled = false
function onKeyPress(inputObject, gameProcessedEvent)
if inputObject.KeyCode == Enum.KeyCode.RightAlt then
if toggle == false then
setting.IncomingReplicationLag = 1000
Effect.Enabled = true
toggle = true
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed * 3
else
setting.IncomingReplicationLag = 0
Effect.Enabled = false
toggle = false
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end
end
game:GetService("UserInputService").InputBegan:connect(onKeyPress)