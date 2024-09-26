local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer
local localCharacter = localPlayer.Character
local localHumanoidRootPart = localCharacter:FindFirstChild("HumanoidRootPart") 
while wait() do
    for i, v in pairs(workspace.Checkpoints:GetChildren()) do
        if localPlayer.leaderstats.Stage.Value == 261 then
            break
        elseif tonumber(v.Name) == localPlayer.leaderstats.Stage.Value + 1 then
            localHumanoidRootPart.CFrame = v.CFrame
        end
    end
end