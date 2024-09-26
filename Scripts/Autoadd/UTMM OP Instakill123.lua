local Players = game:GetService("Players")
local player = Players.LocalPlayer

while true do
    for _, obj in pairs(game:GetService("Workspace"):GetDescendants()) do
        if obj:IsA("Model") and obj.Name ~= player.Name then
            if obj:FindFirstChild("Humanoid") then
                obj.Humanoid.Health = 0
            end
        end
    end
    wait(0.01) -- Adjust the wait time as needed
end