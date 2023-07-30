local players = game:GetService("Players")
local remote = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BowFire")
local shooter = game.Players.LocalPlayer 

local function bow()
    for _, player in ipairs(players:GetPlayers()) do
        if player ~= shooter then 
            local targetCFrame = player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character.HumanoidRootPart.CFrame
            if targetCFrame then
                local args = {
                    [1] = targetCFrame,
                }
    
                remote:FireServer(unpack(args))
            end
        end
    end
end

while true do
    bow()
    task.wait() 
end
