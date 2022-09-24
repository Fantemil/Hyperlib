_G.On = true

while _G.On and wait() do
for i,v in pairs(game:GetService("Workspace").AllFidgets:GetDescendants()) do
    if v.Name == "TouchInterest" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
    end
end
end