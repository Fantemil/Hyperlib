local plr = game.Players.LocalPlayer.Character
local lastPos = plr.HumanoidRootPart.CFrame
for _,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name == "Golden Banana" or v.Name == "Daily Banana" then
        plr.HumanoidRootPart.CFrame = v.Base.CFrame
        wait(.3)
    end
end
plr.HumanoidRootPart.CFrame = lastPos