
local Players = game:GetService("Players")

local function freezeAllPlayers(duration)
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            rootPart.Anchored = true
        end
    end

    wait(duration)

    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local rootPart = player.Character.HumanoidRootPart
            rootPart.Anchored = false
        end
    end
end

freezeAllPlayers(6)