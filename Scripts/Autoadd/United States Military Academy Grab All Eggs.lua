local player = game.Players.LocalPlayer
local eggFolder = game:GetService("Workspace").Easter.egghunt

for _, egg in pairs(eggFolder:GetChildren()) do
    if egg:IsA("BasePart") then
        player.Character.HumanoidRootPart.CFrame = egg.CFrame
        wait(0.4)
    end
end