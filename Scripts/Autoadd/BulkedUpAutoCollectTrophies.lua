_G.autoFarm2 =true;
--trophy farm
while _G.autoFarm2 == true do
    local playerHead = game.Players.LocalPlayer.Character.Head
    for i, v in pairs(game:GetService("Workspace").Trophies:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
    end
wait()
end