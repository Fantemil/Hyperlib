local folder = workspace["Stages"]
local torso = game.Players.LocalPlayer.Character.Torso
while task.wait() do
stages = game.Players.LocalPlayer.leaderstats.Stage.Value
for _,v in pairs(folder:GetChildren()) do
    checkpoint = folder:FindFirstChild(stages + 1)
        if checkpoint and checkpoint:FindFirstChild("TouchInterest") then
            firetouchinterest(torso, checkpoint, 0)
        else
            break
        end
    end
end