local lplr = game:GetService("Players").LocalPlayer.Character
lplr.HumanoidRootPart.CFrame = CFrame.new(-79, 3, -2)
fireclickdetector(workspace["RobloxSign001!"].Model.Roblox.ClickDetector)
for i,v in pairs(workspace["Easter001!"].RobloxEggHunt:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(lplr.HumanoidRootPart, v.Parent, 0)
        firetouchinterest(lplr.HumanoidRootPart, v.Parent, 1)
        wait(.65)
    end
end