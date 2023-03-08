local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Player = Players.LocalPlayer
 
RunService.Stepped:Connect(function()
    for _, CoPlayer in pairs(Players:GetChildren()) do
        if CoPlayer ~= Player and CoPlayer.Character then
            for _, Part in pairs(CoPlayer.Character:GetChildren()) do
                if Part.Name == "HumanoidRootPart" then
                    Part.CanCollide = false
                end
            end
        end
    end
 
    for _, Accessory in pairs(workspace:GetChildren()) do
        if Accessory:IsA("Accessory") and Accessory:FindFirstChildWhichIsA("Part") then
            Accessory:FindFirstChildWhichIsA("Part"):Destroy()
        end
    end
end)