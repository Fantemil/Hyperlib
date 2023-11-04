
local rs = game:GetService("ReplicatedStorage")
local rain = rs.SpawnRainbowBlock
local diamond = rs.SpawnDiamondBlock
local set = 45
local uz = 100
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = set
game.Players.LocalPlayer.Character.Humanoid.JumpPower = uz
while true do
    rain:FireServer()
    diamond:FireServer()
    wait(3)
end