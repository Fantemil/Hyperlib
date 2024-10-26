local check_folder = workspace.Checkpoints
local plr = game.Players.LocalPlayer
for _,v in ipairs(check_folder:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 0)
        firetouchinterest(plr.Character.HumanoidRootPart, v.Parent, 1)
        wait(.65)
    end
end