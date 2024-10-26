local range = 1000
local player = game:GetService("Players").LocalPlayer

local function isFriendWith(player1, player2)
    return player1:IsFriendsWith(player2.UserId)
end

game:GetService("RunService").RenderStepped:Connect(function()
    local players = game.Players:GetPlayers()
    for i = 2, #players do
        local otherPlayer = players[i]
        local character = otherPlayer.Character
        if not isFriendWith(player, otherPlayer) then
            local tool = player.Character and player.Character:FindFirstChildOfClass("Tool")
            if tool and tool:FindFirstChild("Handle") then
                tool:Activate()
                for _, part in next, character:GetChildren() do
                    if part:IsA("BasePart") then
                        firetouchinterest(tool.Handle, part, 0)
                        firetouchinterest(tool.Handle, part, 1)
                    end
                end
            end
        end
    end
end)