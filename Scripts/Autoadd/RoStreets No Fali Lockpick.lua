for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Main_Gui.Lockpick:GetChildren()) do
if v:IsA("UIAspectRatioConstraint") then
    return
else
    v.Size = UDim2.new(10, 10, 10)
    v.Position = UDim2.new(1, 1, 1)
end
end