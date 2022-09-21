local args = {"Excalibur", "ShortSword"};

for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    for key, value in pairs(args) do
    if v.ClassName == "Tool" and v.Name == value then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 0)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Handle, 1)
    end
end
end