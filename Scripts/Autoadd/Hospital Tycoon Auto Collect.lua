local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

if #game:GetService("Workspace").Loots:GetChildren() ~= 0 then
    for _, v in pairs(game:GetService("Workspace").Loots:GetChildren()) do
        firetouchinterest(char.HumanoidRootPart, v.Detector, 0)
        firetouchinterest(char.HumanoidRootPart, v.Detector, 1)
    end
end
game:GetService("Workspace").Loots.ChildAdded:Connect(function(v)
    repeat task.wait() until v:FindFirstChild("Detector")
    firetouchinterest(char.HumanoidRootPart, v.Detector, 0)
    firetouchinterest(char.HumanoidRootPart, v.Detector, 1)
end)