getgenv().gem = true
while getgenv().gem == true do
for i, v in pairs(game:GetService("Workspace").Gems:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
    end
end
wait()
end