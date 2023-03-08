local Orbs = game.Players.LocalPlayer.leaderstats.Chi

while true do
    local args = {
        [1] = {
            [1] = 1,
            [2] = 0,
            [3] = 4,
            [4] = 0
        }
    }
    
    game:GetService("ReplicatedStorage").Remotes.CollectOrb:FireServer(unpack(args))
 task.wait(1)
end