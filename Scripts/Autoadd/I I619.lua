Main Script :

loadstring(game:HttpGet("https://raw.githubusercontent.com/RScriptz/RobloxScripts/main/PixelIncremental.lua"))()

Smart Upgrade :

--[[Toggle]]--
getgenv().smartupgrade = true

--[[Upgrade Function]]--
function upgrade(perk)
    game:GetService("ReplicatedStorage").RemoteEvents.OnUpgrade:FireServer(perk, 1)
end

--[[Main Script]]--
while smartupgrade and task.wait(.25) do
    if tostring(game:GetService("Workspace").LevelUpgrades.SurfaceGui.ScrollingFrame.RollSpeedFrame.UpgradeNumber.Text:sub(1, -4)) ~= "10" then
        upgrade("PointsRollSpeed")
    end
    if tostring(game:GetService("Workspace").LevelUpgrades.SurfaceGui.ScrollingFrame.RollSpeedFrame.UpgradeNumber.Text:sub(1, -4)) == "10" and tostring(game:GetService("Workspace").LevelUpgrades.SurfaceGui.ScrollingFrame.LuckFrame.UpgradeNumber.Text:sub(1, -4)) ~= "100" then
        upgrade("PointsLuck")
    end
    if tostring(game:GetService("Workspace").LevelUpgrades.SurfaceGui.ScrollingFrame.RollSpeedFrame.UpgradeNumber.Text:sub(1, -4)) == "10" and tostring(game:GetService("Workspace").LevelUpgrades.SurfaceGui.ScrollingFrame.LuckFrame.UpgradeNumber.Text:sub(1, -4)) == "100" then
        upgrade("PointsPixel")
    end
end