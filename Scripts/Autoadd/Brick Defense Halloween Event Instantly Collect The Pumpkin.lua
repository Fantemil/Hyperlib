while true do
    wait()
pcall(function()
local touchpart = game.Players.LocalPlayer.Character.Head
for i, v in pairs (game.Workspace.Pumpkin:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerhead, v.Parent, 0)
        wait()
        firetouchinterest(touchpart, v.Parent, 1)
    end
end
end)
end