_G.Target = "PLAYER NAME HERE"


local player = game.Players.LocalPlayer

local targetPlayer = game.Players:FindFirstChild(_G.Target)
if not targetPlayer then
    return
end

local speed = 100

while (targetPlayer.Character.Head.Position - player.Character.Head.Position).magnitude > 2 do
    local direction = (targetPlayer.Character.Head.Position - player.Character.Head.Position).unit
    player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.Position + direction * speed/30)
    wait()
end