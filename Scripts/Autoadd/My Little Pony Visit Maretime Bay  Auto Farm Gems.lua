local head = game.Players.LocalPlayer.Character.HumanoidRootPart
_G.Collect = true

while _G.Collect and task.wait() do
for i, v in pairs(game:GetService("Workspace").Coin:GetChildren()) do
    if v.Name == "TouchInterest" and v.parent then
       firetouchinterest(head, v.Parent, 0)
       firetouchinterest(head, v.Parent, 1)
    end
end
end