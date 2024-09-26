local workspace = game:GetService("Workspace")
local easterFolder = workspace:FindFirstChild("Easter001!")
local robloxEggHuntGroup = easterFolder and easterFolder:FindFirstChild("RobloxEggHunt")
local function teleportToEggies()
    if robloxEggHuntGroup then
        for _, eggy in ipairs(robloxEggHuntGroup:GetChildren()) do
            if eggy:IsA("BasePart") and eggy.Name == "Eggy" then
                game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(eggy.CFrame)
                wait(2)
            end
        end
    else
        warn("No directory was found")
    end
end
teleportToEggies()