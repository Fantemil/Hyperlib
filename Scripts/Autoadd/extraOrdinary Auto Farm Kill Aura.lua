--Settings
_G.Enabled = true

--Variable
local player = game.Players.LocalPlayer
local hits = 1


-- Freeze
for i, v in pairs(game.Workspace.LivingEnemies:GetChildren()) do
    if v:IsA("Model") then
        v.HumanoidRootPart.Anchored = true
        v.Stats.Power.Value = 0 --don't work sometime
    end
end

--Autofarm
while true do
    if _G.Enabled then
        for i, v in pairs(game.Workspace.LivingEnemies:GetChildren()) do
            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and player.Character:FindFirstChild("HumanoidRootPart") then
                repeat
                    if player.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("HumanoidRootPart") then
                        player.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,5)
                    end
                    wait()
                         game:GetService("ReplicatedStorage").Remotes.Punch:FireServer(tonumber(hits))
                until v == nil or v.Parent == nil or not v:FindFirstChild("Humanoid") or v.Humanoid.Health <= 0
            end
        end
    end
    wait()
end