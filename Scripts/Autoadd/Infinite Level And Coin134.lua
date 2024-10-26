local player = game.Players.LocalPlayer
local userId = player.UserId

local playerData = game.ReplicatedStorage:WaitForChild("data"):FindFirstChild(userId)

if playerData then
    playerData.coins.Value = 9999999999
    playerData.xp.Value = 9999999999
else
    print("failed to make coin and levels infinite")
end