game.Players.LocalPlayer.serverstats.moneypersecond.Value = 9999999999999999

wait(0.1)

local teleportPosition = game.Workspace.MoneyBags.Chest.Position

local player = game.Players.LocalPlayer

if player and teleportPosition then
    player.Character.HumanoidRootPart.CFrame = CFrame.new(teleportPosition)
else
    print("nigga this is not possible")
end
