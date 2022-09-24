while true do
    wait(0.1)
    for i,v in pairs(game:GetDescendants()) do
    if v.Name == 'Token' then
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    end
        end
end