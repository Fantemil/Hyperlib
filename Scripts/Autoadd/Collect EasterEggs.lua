for i, v in next, workspace.Map.Eggs:GetChildren() do
    if v then
game.Players.LocalPlayer.Character.HumanoidRootPart:PivotTo(v.CFrame)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
wait(0.5)
    end
end