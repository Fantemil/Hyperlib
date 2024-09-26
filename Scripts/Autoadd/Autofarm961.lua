local workspace = game:GetService("Workspace")
local player = game.Players.LocalPlayer

while wait(2) do
    for _, child in pairs(workspace:GetChildren()) do
        if child:IsA("Folder") and child.Name ~= "Lobby" then
            local endPart = child:FindFirstChild("End")
            if endPart and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.CFrame = endPart.CFrame
            end
        end
    end
end