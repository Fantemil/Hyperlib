fold = workspace["Checkpoints"]
hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
while wait(.5) do -- changing the wait timer can result in slower tp
val = game.Players.LocalPlayer.leaderstats.Stage.Value
for _,v in pairs(fold:GetChildren()) do
    t = fold:FindFirstChild(val + 1)
        if t then
            hrp.CFrame = t["SpawnLocation"].CFrame + Vector3.new(0,4,0) -- recommended to edit the "spawnlocation"
        else
            break
        end
    end
end