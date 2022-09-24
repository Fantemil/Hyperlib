_G.autoFarm =true; 
--egg hunt farm
while _G.autoFarm == true do
    local playerHead = game.Players.LocalPlayer.Character.Head
    for i, v in pairs(game:GetService("Workspace").Eggs:GetDescendants()) do
        if v.Name == "TouchInterest" and v.Parent then
            firetouchinterest(game:GetService('Players').LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        end
    end
wait()
end